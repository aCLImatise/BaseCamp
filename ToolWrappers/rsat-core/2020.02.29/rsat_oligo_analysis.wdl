version 1.0

task RsatOligoanalysis {
  input {
    File? specified_standard_input
    String? mask
    File? format
    Boolean? oligomer_length
    Boolean? exp_freq
    Boolean? calib_n
    Int? calib_one
    Boolean? ncf
    Boolean? bg
    Boolean? org
    Boolean? tax_on
    Boolean? markov
    Boolean? lexicon
    Boolean? pseudo
    Boolean? noov
    Boolean? two_str
    File? one_str
    Boolean? seqtype
    Boolean? verbose_level_report
    Int? return
    Boolean? pal
    Boolean? table
    Boolean? distrib
    File? group_rc
    Boolean? nogroup_rc
    Boolean? one_n
    String? one_deg
    File? accept
    Boolean? sort
    Boolean? under
    Boolean? two_tails
    Boolean? zero_occ
    Boolean? quick
    Boolean? quick_if_possible
    Boolean? th_po
    Boolean? tho_sig
    Boolean? th_ratio
    Boolean? thms
    String? th_msf
    Boolean? th_pms
    Boolean? thms_sig
    String oligo_analysis
    Float one_dot_one_six_nine
    String sequences
    String thresholds
    String probability_patternseveray_models
    String a_coefficient_autocorrelation
    String observed_number_occurrencesp
    String accuracy_dot
    Int x_one
    String w_given_word
    String wr
    String e_value
    String z_score
    String observed_number_occurrencesexpocc
    String dyad_analysis
    String count_words
  }
  command <<<
    rsat oligo_analysis \
      ~{oligo_analysis} \
      ~{one_dot_one_six_nine} \
      ~{sequences} \
      ~{thresholds} \
      ~{probability_patternseveray_models} \
      ~{a_coefficient_autocorrelation} \
      ~{observed_number_occurrencesp} \
      ~{accuracy_dot} \
      ~{x_one} \
      ~{w_given_word} \
      ~{wr} \
      ~{e_value} \
      ~{z_score} \
      ~{observed_number_occurrencesexpocc} \
      ~{dyad_analysis} \
      ~{count_words} \
      ~{if defined(specified_standard_input) then ("-i " +  '"' + specified_standard_input + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (oligomer_length) then "-l" else ""} \
      ~{if (exp_freq) then "-expfreq" else ""} \
      ~{if (calib_n) then "-calibN" else ""} \
      ~{if defined(calib_one) then ("-calib1 " +  '"' + calib_one + '"') else ""} \
      ~{if (ncf) then "-ncf" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (org) then "-org" else ""} \
      ~{if (tax_on) then "-taxon" else ""} \
      ~{if (markov) then "-markov" else ""} \
      ~{if (lexicon) then "-lexicon" else ""} \
      ~{if (pseudo) then "-pseudo" else ""} \
      ~{if (noov) then "-noov" else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if defined(one_str) then ("-1str " +  '"' + one_str + '"') else ""} \
      ~{if (seqtype) then "-seqtype" else ""} \
      ~{if (verbose_level_report) then "-v" else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if (pal) then "-pal" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (distrib) then "-distrib" else ""} \
      ~{if (group_rc) then "-grouprc" else ""} \
      ~{if (nogroup_rc) then "-nogrouprc" else ""} \
      ~{if (one_n) then "-oneN" else ""} \
      ~{if defined(one_deg) then ("-onedeg " +  '"' + one_deg + '"') else ""} \
      ~{if defined(accept) then ("-accept " +  '"' + accept + '"') else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (under) then "-under" else ""} \
      ~{if (two_tails) then "-two_tails" else ""} \
      ~{if (zero_occ) then "-zeroocc" else ""} \
      ~{if (quick) then "-quick" else ""} \
      ~{if (quick_if_possible) then "-quick_if_possible" else ""} \
      ~{if (th_po) then "-thpo" else ""} \
      ~{if (tho_sig) then "-thosig" else ""} \
      ~{if (th_ratio) then "-thratio" else ""} \
      ~{if (thms) then "-thms" else ""} \
      ~{if defined(th_msf) then ("-thmsf " +  '"' + th_msf + '"') else ""} \
      ~{if (th_pms) then "-thpms" else ""} \
      ~{if (thms_sig) then "-thmssig" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specified_standard_input: "if not specified, the standard input is used.\\nThis allows to place the command within a pipe."
    mask: "|lower\\nMask lower or uppercases, respecively, i.e. replace\\nselected case by N characters."
    format: "file format. Must be followed by one of the\\nfollowing options:\\nfasta (default)\\nwconsensus\\nIG\\nfilelist\\nraw\\nSee below for the description of these formats."
    oligomer_length: "oligomer length."
    exp_freq: "(mutually exclusive with -calibN, -calib1 and -a)\\nfile containing the estimations for expected oligomer\\nfrequencies. This can be for instance the olignonucleotide\\nfrequency measured in the whole genome, or in all intergenic\\nregions, or in all coding regions.\\nThis information is used for the calculation of probabilities."
    calib_n: "(mutually exclusive with -expfreq and -a) File\\ncontaining the estimations for the mean and variance\\nof oligomer occurrences. This calibration can be\\nperformed with the script calibrate-oligos.\\nCalibration file contains (among other informations)\\nthe occurrence means and variances of the simulation,\\nwhich is used for the calculation of probabilities, on\\nthe basis of a negative binomial model."
    calib_one: "file based on single sequence analysis.\\nThe mean and variance of occurrences are estimated my\\nmultiplying single-sequence estimators by the number\\nof sequences (we checked the linearity)."
    ncf: "(deprecated, use \\\"-bg intergenic\\\" instead)\\nuse intergenic frequencies as background frequencies"
    bg: "background model\\nType of sequences used as background model for\\nestimating expected oligonucleotide frequencies.\\nEither -org or -taxon is required with the option -bg.\\nSupported models:\\n-bg upstream\\nall upstream sequences, allowing overlap with\\nupstream ORFs. Calibrations with a single\\nsize per genome.\\n-bg upstreamL\\nall upstream sequences, allowing overlap with\\nupstream ORFs. Length-specific calibration\\nsets.\\n-bg upstream-noorf\\nall upstream sequences, preventing overlap\\nwith upstream ORFs\\n-bg intergenic\\nintergenic frequencies\\nWhole set of intergenic regions, including\\nupstream and downstream sequences\\n-bg input\\nEstimate word frequency from residue\\nfrequencies in the input sequences (Bernoulli\\nmodel)."
    org: "organism\\nOrganism used to estimate background frequencies.\\nThe list of supported organisms can be obtained with the\\ncommand I<supported-organisms>."
    tax_on: "taxon\\nOrganism or taxon that used as reference for the\\nestimation of a background model based on a genome\\nsubset (option -bg).  Either -org or -taxon is\\nrequired with the option -bg.\\nOptions -org and -taxon are mutually exclusive."
    markov: "#\\nMarkov chain: the frequency expected for each word is\\ncalculated on basis of subword frequencies observed in the\\ninput set.\\nThe number # indicates the order of the Markov chain.\\nIf negative, # is substracted to word length\\ne.g:\\n-l 6 -markov -2\\nis equivalent to\\n-l 6 -markov 5\\nOrder 0 is equivalent to using single nucleotide frequencies\\n(-a input).\\nEx: calculation of expected 6nt frequencies on basis\\nof a Markov chain of order 4 :\\nobs(GATAA) x obs(ATAAG)\\nexp(GATAAG) = -----------------------\\nobs(ATAA)"
    lexicon: "Expected word frequencies are calculated on the basis\\nof subword frequencies, in a similar (but not\\nidentical) way to the \\\"dictionary\\\" approach developed\\nby Harmen Bussemaker.  Each word is segmented in 2\\nsubwords in all possible ways:\\nGATAAG  G & ATAAG\\nGA & TAAG\\nGAT & TAG\\nGATA & AG\\nGATAA & G\\nThe expected frequency of each segmented pair is the\\nproduct of expected frequencies of its members. The\\nexpected word frequency is the maximum expected pair\\nfrequency."
    pseudo: "#\\nPseudo-frequency for the background model, where #\\nmust be a real value between 0 and 1.\\nThis allows to circumvent the problem that the\\nexpected frequency file might be incomplete (due to\\na too small reference sequence set), in which case\\nsome oligonucleotides might have an observed\\nfrequency > 0, whereas the expected frequency is 0\\n(leading to an impossible event). The expected\\nfrequency is corrected by a pseudo-frequency, which\\nis the pseudo-frequency divided by the number of\\npossible patterns."
    noov: "no overlapping.\\nDisable the detection of overlapping matches for\\nself-overlapping patterns (ex TATATA, GATAGA)."
    two_str: "(default)\\noligonucleotide occurrences found on both stands are summed."
    one_str: "Output file. If not specified, the result is printed on the"
    seqtype: "dna|prot|other\\nInput sequence type\\n. DNA (default)\\nOnly A, C, G, and T residues are\\naccepted. oligomers that contain partly defined\\n(IUPAC code) or undefined nucleotides (N) are\\ndiscarded from the countings.\\n. protein\\nOligopeptide analysis instead of oligonucleotide.\\nThis inactivates the grouping of oligomers with\\ntheir reverse complements, and modifies the\\nalphabet size.\\n. other\\nAny type of letters found in the input sequence is\\nconsidered valid. This allows to analyze texts in\\nhuman language."
    verbose_level_report: "#    verbose level\\n1 report parameters and statistics\\n2 warn when the program enters a new subroutine\\n3 warn when the program reads a new sequence\\n4 very high verbosity (for debugging)"
    return: "of statistics to return\\nthis option is followed by a list of words,\\nseparated by commas, indicating which values\\nhave to be returned for each oligomer.\\nSupported statistics:\\nocc     number of occurrences .\\nmseq    number of matching sequences.\\nfreq    relative frequencies\\n(occurrences/sum of occurrences)\\nproba   binomial probability for observing\\n>= k occurrences\\nratio   observed/expected ratio\\nzscore  z-score\\nlike    log likelihood\\npos     matching positions for each oligomer\\nrank    rank of the pattern according to the sorting\\ncriterion\\nex: -return freq,occ,zscore"
    pal: "only return reverse palindroms"
    table: "return a table where rows represents input sequences,\\nand columns the counts of occurrences for each\\npossible oligo"
    distrib: "return occurrence distributions (one row per pattern)"
    group_rc: "(default)\\ngroup reverse complement with the direct sequence in the\\noutput file. This avoids redundancy (since the frequence of\\nAAAAA is the same as TTTTT when one searches on both strands).\\nCan be inactivated by the -nogrouprc option.\\nIncompatible with -1str."
    nogroup_rc: "inactivates grouping of reverse complement pairs."
    one_n: "group oligonucleotides by neighborhood, where one neighborhood\\nis defined as a set of oligo differing by one mismatch at a\\ncommon position.\\nex: the oligonucleotide atg admits 3 distinct neighborhoods:\\natN\\naNg\\nNtg"
    one_deg: "insert one ambiguous nucleotide code at each\\nposition of each pattern"
    accept: "Specify a file containing a list of accepted\\noligos. The analysis is then restricted to these\\noligos. Since the number of tested oligos is reduced\\nby this selection, the multitesting correction is\\ngenerally lower, which increases the significance of\\nthe accepted oligos, compared to the default situation\\nwhere all oligos are analyzed.\\nFile format: the first word of each row specifies a\\noligo. Subsequent words are ignored."
    sort: "sort oligomers according to overrepresentation.\\nThe sort criterion depends on the estimators returned,\\nby preference:\\n- Z-score\\n- binomial significance\\n- occurrence number"
    under: "detect under-represented instead of over-represented words\\n(left-tail significance test, see below for details)."
    two_tails: "detect under-represented and over-represented words\\n(two-tails significance test, see below for details)."
    zero_occ: "Report also patterns with zero occurrences (provided\\nthey fit the other thresholds).\\nBy default, the program reports only patterns present\\nin the sequence.\\nIf the left tail or two-tail test is applied, patterns\\nwith zero occurrences are automatically taken into\\naccount.-\\nIn some other cases, one would also like to detect\\npatterns absent from the sequence. This is the\\nfunction of this option."
    quick: "Quick count mode: delegate the counting of word\\noccurrences to count-words, a program written in C by\\nMatthieu Defrance.\\nThis option is incompatible with the following output\\nfields:\\nIt is also incompatible with the output types\\n-table\\n-distrib"
    quick_if_possible: "Evaluate if the quick mode is compatible with the\\nselected output parameters, and, if so, run in this\\nmode."
    th_po: "# where # is a real value comprised between 0 and 1.\\nThreshold on occurrence probability: only returns the patterns\\nfor which the probability to encounter a number of occurrences\\nhigher or equals to that observed is smaller than #."
    tho_sig: "#\\nthreshold on occurence significance index.\\nOnly returns the patterns for which the occurence significance\\nindex is higher than or equal to #."
    th_ratio: "#\\nthreshold on observed/expected occurrence ratio\\nOnly returns patterns with higher ratios than the threshold."
    thms: "# where # is an integer. Threshold on matching\\nsequences: only returns the patterns encountered at\\nleast once in at least # sequences."
    th_msf: "on frequency of matching sequences (propotion\\nof sequences with at least one occurrence of the\\npattern)"
    th_pms: "#\\nwhere # is a real value comprised between 0 and 1.\\nThreshold on occurrence probability: only returns the patterns\\nfor which the probability of a number of matching sequences\\nhigher or equals to that observed is smaller than #."
    thms_sig: "#\\nthreshold on matching sequence significance index.\\nOnly returns the patterns for which the significance\\nindex of matching sequences is higher than or equal to #."
    oligo_analysis: "VERSION"
    one_dot_one_six_nine: "AUTHOR"
    sequences: "motif discovery"
    thresholds: "-lth param value\\nLower threshold on some parameter. All patterns with a\\nparameter value smaller than the threshold are\\ndiscarded.\\nSupported parameters: occ,occ_P,occ_E,occ_sig,observed_freq,exp_freq,zscore,mseq,ms_P,ms_E,ms_sig,ratio,rank\\nExample: select patterns with a positive value for the\\noccurrence significance.\\n-lth occ_sig 0"
    probability_patternseveray_models: "p  = probability of the pattern\\nSeveray models are supported for estimating the\\nprior probability (see options -a, -expfreq and\\n-bg).\\nS  = number of sequences in the sequence set.\\nLj = length of the jth regulatory region\\nk  = length of oligomer\\nT = the number of possible matching positions."
    a_coefficient_autocorrelation: "a is the coefficient of autocorrelation"
    observed_number_occurrencesp: "x   is the observed number of occurrences,\\np   is the expected frequency for the pattern,\\nT   is the number of possible matching positions,\\nas defined above."
    accuracy_dot: "Interpretation: the P-value (Pval) represents the nominal risk"
    x_one: "P(X<=x) =  SUM P(X=i)"
    w_given_word: "W     is a given word"
    wr: "is the reverse complement of W"
    e_value: "The probability of occurrence by itself is not fully\\ninformative, because the threshold must be adapted depending\\non the number of patterns considered. Indeed, a simple\\nhexanucleotide analysis amounts to consider 4096\\nhypotheses.\\nThe E-value (Eval) represents the expected number of patterns\\nwhich would be returned at random for a given threshold of\\nnominal P-value.\\nEval = NPO * P(X>=x)\\nwhere NPO is the number of possible oligomers of the chosen\\nlength (eg 4096 for hexanucleotides).\\nNote that when searches are performed on both strands, NPO is\\ncorrected for the fact that non-palindromic patterns are\\ngrouped by pairs (for example, there are 4096 possible\\nhexanucleotides when the count is performed on a single\\nstrand, but only 2080 when the count is performed on both\\nstrands).\\nInterpretation: the E-value (Eval) represents the expected\\nnumber of false positives, for a given threshold of P-value\\n(Pval)."
    z_score: "The Z-score is calculated in the following way\\nZsc = (obs_occ - exp_occ)/sd_occ\\n= (obs_occ - exp_occ)/sqrt(var_occ)"
    observed_number_occurrencesexpocc: "obs_occ is the observed number of occurrences\\nexp_occ is the expected number of occurrences\\nsd_occ and var_occ\\nare the estimated standard deviation and variances\\nfor the occurrences, respectively."
    dyad_analysis: "Detect over- and under-represented dyads (i.e. a pair of short\\noligonucleotides separated by a spacing of fixed width but\\nvariable content)."
    count_words: "Program written in C (developed by Matthieu Defrance) to\\nensure an efficient counting of oligonucleotides. This program\\nruns about 100 times faster than oligo-analysis but has\\nrestricted functionality (only return word occurrences and\\nfrequencies)."
  }
  output {
    File out_stdout = stdout()
    File out_one_str = "${in_one_str}"
    File out_group_rc = "${in_group_rc}"
  }
}