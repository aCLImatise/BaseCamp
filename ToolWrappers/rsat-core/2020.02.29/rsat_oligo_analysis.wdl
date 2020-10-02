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
    Boolean? one_str
    Boolean? seqtype
    Int? lth
    String oligo_analysis
    Float one_dot_one_six_nine
    String sequences
    String probability_patternseveray_models
    String a_coefficient_autocorrelation
    String observed_number_occurrencesp
    String accuracy_dot
    String over_slash_under_representation
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
      ~{probability_patternseveray_models} \
      ~{a_coefficient_autocorrelation} \
      ~{observed_number_occurrencesp} \
      ~{accuracy_dot} \
      ~{over_slash_under_representation} \
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
      ~{if (one_str) then "-1str" else ""} \
      ~{if (seqtype) then "-seqtype" else ""} \
      ~{if defined(lth) then ("-lth " +  '"' + lth + '"') else ""}
  >>>
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
    one_str: "inactivates the summation of occurrences on both strands."
    seqtype: "dna|prot|other\\nInput sequence type\\n. DNA (default)\\nOnly A, C, G, and T residues are\\naccepted. oligomers that contain partly defined\\n(IUPAC code) or undefined nucleotides (N) are\\ndiscarded from the countings.\\n. protein\\nOligopeptide analysis instead of oligonucleotide.\\nThis inactivates the grouping of oligomers with\\ntheir reverse complements, and modifies the\\nalphabet size.\\n. other\\nAny type of letters found in the input sequence is\\nconsidered valid. This allows to analyze texts in\\nhuman language."
    lth: "value\\nLower threshold on some parameter. All patterns with a\\nparameter value smaller than the threshold are\\ndiscarded.\\nSupported parameters: occ,occ_P,occ_E,occ_sig,observed_freq,exp_freq,zscore,mseq,ms_P,ms_E,ms_sig,ratio,rank\\nExample: select patterns with a positive value for the\\noccurrence significance.\\n-lth occ_sig 0"
    oligo_analysis: "VERSION"
    one_dot_one_six_nine: "AUTHOR"
    sequences: "motif discovery"
    probability_patternseveray_models: "p  = probability of the pattern\\nSeveray models are supported for estimating the\\nprior probability (see options -a, -expfreq and\\n-bg).\\nS  = number of sequences in the sequence set.\\nLj = length of the jth regulatory region\\nk  = length of oligomer\\nT = the number of possible matching positions."
    a_coefficient_autocorrelation: "a is the coefficient of autocorrelation"
    observed_number_occurrencesp: "x   is the observed number of occurrences,\\np   is the expected frequency for the pattern,\\nT   is the number of possible matching positions,\\nas defined above."
    accuracy_dot: "Interpretation: the P-value (Pval) represents the nominal risk"
    over_slash_under_representation: "By default, the program calculates the P-value on the right\\ntail of the probability distribution, which represents the\\nprobability to observe at least x occurrences by chance:\\nT\\nP(X>=x) = SUM P(X=i)\\ni=x\\nWith the option -under, the P-value is calculated on the left\\ntail of the distribution, which represents the probability of\\nhaving at most x occurrences:\\nx-1\\nP(X<=x) =  SUM P(X=i)\\ni=0\\nThe option -under does not affect the other statistics\\n(zscore, loglikelihood). For z-score, the negative values\\nindicate under-representation.\\nWith the option -two_tails, the P-value is calculated on\\neither the left or the right-tail of the distribution,\\ndepending on the observed/expected comparison:\\nif k >= exp_occ, right tail (over-representation)\\nif k < exp_occ, left tail (under-representation)"
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
  }
}