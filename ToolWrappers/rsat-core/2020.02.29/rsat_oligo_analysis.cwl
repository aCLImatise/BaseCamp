class: CommandLineTool
id: rsat_oligo_analysis.cwl
inputs:
- id: in_specified_standard_input
  doc: "if not specified, the standard input is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  inputBinding:
    prefix: -i
- id: in_mask
  doc: "|lower\nMask lower or uppercases, respecively, i.e. replace\nselected case\
    \ by N characters."
  type: string?
  inputBinding:
    prefix: -mask
- id: in_format
  doc: "file format. Must be followed by one of the\nfollowing options:\nfasta (default)\n\
    wconsensus\nIG\nfilelist\nraw\nSee below for the description of these formats."
  type: File?
  inputBinding:
    prefix: -format
- id: in_oligomer_length
  doc: oligomer length.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_exp_freq
  doc: "(mutually exclusive with -calibN, -calib1 and -a)\nfile containing the estimations\
    \ for expected oligomer\nfrequencies. This can be for instance the olignonucleotide\n\
    frequency measured in the whole genome, or in all intergenic\nregions, or in all\
    \ coding regions.\nThis information is used for the calculation of probabilities."
  type: boolean?
  inputBinding:
    prefix: -expfreq
- id: in_calib_n
  doc: "(mutually exclusive with -expfreq and -a) File\ncontaining the estimations\
    \ for the mean and variance\nof oligomer occurrences. This calibration can be\n\
    performed with the script calibrate-oligos.\nCalibration file contains (among\
    \ other informations)\nthe occurrence means and variances of the simulation,\n\
    which is used for the calculation of probabilities, on\nthe basis of a negative\
    \ binomial model."
  type: boolean?
  inputBinding:
    prefix: -calibN
- id: in_calib_one
  doc: "file based on single sequence analysis.\nThe mean and variance of occurrences\
    \ are estimated my\nmultiplying single-sequence estimators by the number\nof sequences\
    \ (we checked the linearity)."
  type: long?
  inputBinding:
    prefix: -calib1
- id: in_ncf
  doc: "(deprecated, use \"-bg intergenic\" instead)\nuse intergenic frequencies as\
    \ background frequencies"
  type: boolean?
  inputBinding:
    prefix: -ncf
- id: in_bg
  doc: "background model\nType of sequences used as background model for\nestimating\
    \ expected oligonucleotide frequencies.\nEither -org or -taxon is required with\
    \ the option -bg.\nSupported models:\n-bg upstream\nall upstream sequences, allowing\
    \ overlap with\nupstream ORFs. Calibrations with a single\nsize per genome.\n\
    -bg upstreamL\nall upstream sequences, allowing overlap with\nupstream ORFs. Length-specific\
    \ calibration\nsets.\n-bg upstream-noorf\nall upstream sequences, preventing overlap\n\
    with upstream ORFs\n-bg intergenic\nintergenic frequencies\nWhole set of intergenic\
    \ regions, including\nupstream and downstream sequences\n-bg input\nEstimate word\
    \ frequency from residue\nfrequencies in the input sequences (Bernoulli\nmodel)."
  type: boolean?
  inputBinding:
    prefix: -bg
- id: in_org
  doc: "organism\nOrganism used to estimate background frequencies.\nThe list of supported\
    \ organisms can be obtained with the\ncommand I<supported-organisms>."
  type: boolean?
  inputBinding:
    prefix: -org
- id: in_tax_on
  doc: "taxon\nOrganism or taxon that used as reference for the\nestimation of a background\
    \ model based on a genome\nsubset (option -bg).  Either -org or -taxon is\nrequired\
    \ with the option -bg.\nOptions -org and -taxon are mutually exclusive."
  type: boolean?
  inputBinding:
    prefix: -taxon
- id: in_markov
  doc: "#\nMarkov chain: the frequency expected for each word is\ncalculated on basis\
    \ of subword frequencies observed in the\ninput set.\nThe number # indicates the\
    \ order of the Markov chain.\nIf negative, # is substracted to word length\ne.g:\n\
    -l 6 -markov -2\nis equivalent to\n-l 6 -markov 5\nOrder 0 is equivalent to using\
    \ single nucleotide frequencies\n(-a input).\nEx: calculation of expected 6nt\
    \ frequencies on basis\nof a Markov chain of order 4 :\nobs(GATAA) x obs(ATAAG)\n\
    exp(GATAAG) = -----------------------\nobs(ATAA)"
  type: boolean?
  inputBinding:
    prefix: -markov
- id: in_lexicon
  doc: "Expected word frequencies are calculated on the basis\nof subword frequencies,\
    \ in a similar (but not\nidentical) way to the \"dictionary\" approach developed\n\
    by Harmen Bussemaker.  Each word is segmented in 2\nsubwords in all possible ways:\n\
    GATAAG  G & ATAAG\nGA & TAAG\nGAT & TAG\nGATA & AG\nGATAA & G\nThe expected frequency\
    \ of each segmented pair is the\nproduct of expected frequencies of its members.\
    \ The\nexpected word frequency is the maximum expected pair\nfrequency."
  type: boolean?
  inputBinding:
    prefix: -lexicon
- id: in_pseudo
  doc: "#\nPseudo-frequency for the background model, where #\nmust be a real value\
    \ between 0 and 1.\nThis allows to circumvent the problem that the\nexpected frequency\
    \ file might be incomplete (due to\na too small reference sequence set), in which\
    \ case\nsome oligonucleotides might have an observed\nfrequency > 0, whereas the\
    \ expected frequency is 0\n(leading to an impossible event). The expected\nfrequency\
    \ is corrected by a pseudo-frequency, which\nis the pseudo-frequency divided by\
    \ the number of\npossible patterns."
  type: boolean?
  inputBinding:
    prefix: -pseudo
- id: in_noov
  doc: "no overlapping.\nDisable the detection of overlapping matches for\nself-overlapping\
    \ patterns (ex TATATA, GATAGA)."
  type: boolean?
  inputBinding:
    prefix: -noov
- id: in_two_str
  doc: "(default)\noligonucleotide occurrences found on both stands are summed."
  type: boolean?
  inputBinding:
    prefix: -2str
- id: in_one_str
  doc: Output file. If not specified, the result is printed on the
  type: File?
  inputBinding:
    prefix: -1str
- id: in_seqtype
  doc: "dna|prot|other\nInput sequence type\n. DNA (default)\nOnly A, C, G, and T\
    \ residues are\naccepted. oligomers that contain partly defined\n(IUPAC code)\
    \ or undefined nucleotides (N) are\ndiscarded from the countings.\n. protein\n\
    Oligopeptide analysis instead of oligonucleotide.\nThis inactivates the grouping\
    \ of oligomers with\ntheir reverse complements, and modifies the\nalphabet size.\n\
    . other\nAny type of letters found in the input sequence is\nconsidered valid.\
    \ This allows to analyze texts in\nhuman language."
  type: boolean?
  inputBinding:
    prefix: -seqtype
- id: in_verbose_level_report
  doc: "#    verbose level\n1 report parameters and statistics\n2 warn when the program\
    \ enters a new subroutine\n3 warn when the program reads a new sequence\n4 very\
    \ high verbosity (for debugging)"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_return
  doc: "of statistics to return\nthis option is followed by a list of words,\nseparated\
    \ by commas, indicating which values\nhave to be returned for each oligomer.\n\
    Supported statistics:\nocc     number of occurrences .\nmseq    number of matching\
    \ sequences.\nfreq    relative frequencies\n(occurrences/sum of occurrences)\n\
    proba   binomial probability for observing\n>= k occurrences\nratio   observed/expected\
    \ ratio\nzscore  z-score\nlike    log likelihood\npos     matching positions for\
    \ each oligomer\nrank    rank of the pattern according to the sorting\ncriterion\n\
    ex: -return freq,occ,zscore"
  type: long?
  inputBinding:
    prefix: -return
- id: in_pal
  doc: only return reverse palindroms
  type: boolean?
  inputBinding:
    prefix: -pal
- id: in_table
  doc: "return a table where rows represents input sequences,\nand columns the counts\
    \ of occurrences for each\npossible oligo"
  type: boolean?
  inputBinding:
    prefix: -table
- id: in_distrib
  doc: return occurrence distributions (one row per pattern)
  type: boolean?
  inputBinding:
    prefix: -distrib
- id: in_group_rc
  doc: "(default)\ngroup reverse complement with the direct sequence in the\noutput\
    \ file. This avoids redundancy (since the frequence of\nAAAAA is the same as TTTTT\
    \ when one searches on both strands).\nCan be inactivated by the -nogrouprc option.\n\
    Incompatible with -1str."
  type: File?
  inputBinding:
    prefix: -grouprc
- id: in_nogroup_rc
  doc: inactivates grouping of reverse complement pairs.
  type: boolean?
  inputBinding:
    prefix: -nogrouprc
- id: in_one_n
  doc: "group oligonucleotides by neighborhood, where one neighborhood\nis defined\
    \ as a set of oligo differing by one mismatch at a\ncommon position.\nex: the\
    \ oligonucleotide atg admits 3 distinct neighborhoods:\natN\naNg\nNtg"
  type: boolean?
  inputBinding:
    prefix: -oneN
- id: in_one_deg
  doc: "insert one ambiguous nucleotide code at each\nposition of each pattern"
  type: string?
  inputBinding:
    prefix: -onedeg
- id: in_accept
  doc: "Specify a file containing a list of accepted\noligos. The analysis is then\
    \ restricted to these\noligos. Since the number of tested oligos is reduced\n\
    by this selection, the multitesting correction is\ngenerally lower, which increases\
    \ the significance of\nthe accepted oligos, compared to the default situation\n\
    where all oligos are analyzed.\nFile format: the first word of each row specifies\
    \ a\noligo. Subsequent words are ignored."
  type: File?
  inputBinding:
    prefix: -accept
- id: in_sort
  doc: "sort oligomers according to overrepresentation.\nThe sort criterion depends\
    \ on the estimators returned,\nby preference:\n- Z-score\n- binomial significance\n\
    - occurrence number"
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_under
  doc: "detect under-represented instead of over-represented words\n(left-tail significance\
    \ test, see below for details)."
  type: boolean?
  inputBinding:
    prefix: -under
- id: in_two_tails
  doc: "detect under-represented and over-represented words\n(two-tails significance\
    \ test, see below for details)."
  type: boolean?
  inputBinding:
    prefix: -two_tails
- id: in_zero_occ
  doc: "Report also patterns with zero occurrences (provided\nthey fit the other thresholds).\n\
    By default, the program reports only patterns present\nin the sequence.\nIf the\
    \ left tail or two-tail test is applied, patterns\nwith zero occurrences are automatically\
    \ taken into\naccount.-\nIn some other cases, one would also like to detect\n\
    patterns absent from the sequence. This is the\nfunction of this option."
  type: boolean?
  inputBinding:
    prefix: -zeroocc
- id: in_quick
  doc: "Quick count mode: delegate the counting of word\noccurrences to count-words,\
    \ a program written in C by\nMatthieu Defrance.\nThis option is incompatible with\
    \ the following output\nfields:\nIt is also incompatible with the output types\n\
    -table\n-distrib"
  type: boolean?
  inputBinding:
    prefix: -quick
- id: in_quick_if_possible
  doc: "Evaluate if the quick mode is compatible with the\nselected output parameters,\
    \ and, if so, run in this\nmode."
  type: boolean?
  inputBinding:
    prefix: -quick_if_possible
- id: in_th_po
  doc: "# where # is a real value comprised between 0 and 1.\nThreshold on occurrence\
    \ probability: only returns the patterns\nfor which the probability to encounter\
    \ a number of occurrences\nhigher or equals to that observed is smaller than #."
  type: boolean?
  inputBinding:
    prefix: -thpo
- id: in_tho_sig
  doc: "#\nthreshold on occurence significance index.\nOnly returns the patterns for\
    \ which the occurence significance\nindex is higher than or equal to #."
  type: boolean?
  inputBinding:
    prefix: -thosig
- id: in_th_ratio
  doc: "#\nthreshold on observed/expected occurrence ratio\nOnly returns patterns\
    \ with higher ratios than the threshold."
  type: boolean?
  inputBinding:
    prefix: -thratio
- id: in_thms
  doc: "# where # is an integer. Threshold on matching\nsequences: only returns the\
    \ patterns encountered at\nleast once in at least # sequences."
  type: boolean?
  inputBinding:
    prefix: -thms
- id: in_th_msf
  doc: "on frequency of matching sequences (propotion\nof sequences with at least\
    \ one occurrence of the\npattern)"
  type: string?
  inputBinding:
    prefix: -thmsf
- id: in_th_pms
  doc: "#\nwhere # is a real value comprised between 0 and 1.\nThreshold on occurrence\
    \ probability: only returns the patterns\nfor which the probability of a number\
    \ of matching sequences\nhigher or equals to that observed is smaller than #."
  type: boolean?
  inputBinding:
    prefix: -thpms
- id: in_thms_sig
  doc: "#\nthreshold on matching sequence significance index.\nOnly returns the patterns\
    \ for which the significance\nindex of matching sequences is higher than or equal\
    \ to #."
  type: boolean?
  inputBinding:
    prefix: -thmssig
- id: in_oligo_analysis
  doc: VERSION
  type: string
  inputBinding:
    position: 0
- id: in_one_dot_one_six_nine
  doc: AUTHOR
  type: double
  inputBinding:
    position: 1
- id: in_sequences
  doc: motif discovery
  type: string
  inputBinding:
    position: 0
- id: in_thresholds
  doc: "-lth param value\nLower threshold on some parameter. All patterns with a\n\
    parameter value smaller than the threshold are\ndiscarded.\nSupported parameters:\
    \ occ,occ_P,occ_E,occ_sig,observed_freq,exp_freq,zscore,mseq,ms_P,ms_E,ms_sig,ratio,rank\n\
    Example: select patterns with a positive value for the\noccurrence significance.\n\
    -lth occ_sig 0"
  type: string
  inputBinding:
    position: 0
- id: in_probability_patternseveray_models
  doc: "p  = probability of the pattern\nSeveray models are supported for estimating\
    \ the\nprior probability (see options -a, -expfreq and\n-bg).\nS  = number of\
    \ sequences in the sequence set.\nLj = length of the jth regulatory region\nk\
    \  = length of oligomer\nT = the number of possible matching positions."
  type: string
  inputBinding:
    position: 0
- id: in_a_coefficient_autocorrelation
  doc: a is the coefficient of autocorrelation
  type: string
  inputBinding:
    position: 0
- id: in_observed_number_occurrencesp
  doc: "x   is the observed number of occurrences,\np   is the expected frequency\
    \ for the pattern,\nT   is the number of possible matching positions,\nas defined\
    \ above."
  type: string
  inputBinding:
    position: 0
- id: in_accuracy_dot
  doc: 'Interpretation: the P-value (Pval) represents the nominal risk'
  type: string
  inputBinding:
    position: 0
- id: in_x_one
  doc: P(X<=x) =  SUM P(X=i)
  type: long
  inputBinding:
    position: 0
- id: in_w_given_word
  doc: W     is a given word
  type: string
  inputBinding:
    position: 0
- id: in_wr
  doc: is the reverse complement of W
  type: string
  inputBinding:
    position: 1
- id: in_e_value
  doc: "The probability of occurrence by itself is not fully\ninformative, because\
    \ the threshold must be adapted depending\non the number of patterns considered.\
    \ Indeed, a simple\nhexanucleotide analysis amounts to consider 4096\nhypotheses.\n\
    The E-value (Eval) represents the expected number of patterns\nwhich would be\
    \ returned at random for a given threshold of\nnominal P-value.\nEval = NPO *\
    \ P(X>=x)\nwhere NPO is the number of possible oligomers of the chosen\nlength\
    \ (eg 4096 for hexanucleotides).\nNote that when searches are performed on both\
    \ strands, NPO is\ncorrected for the fact that non-palindromic patterns are\n\
    grouped by pairs (for example, there are 4096 possible\nhexanucleotides when the\
    \ count is performed on a single\nstrand, but only 2080 when the count is performed\
    \ on both\nstrands).\nInterpretation: the E-value (Eval) represents the expected\n\
    number of false positives, for a given threshold of P-value\n(Pval)."
  type: string
  inputBinding:
    position: 0
- id: in_z_score
  doc: "The Z-score is calculated in the following way\nZsc = (obs_occ - exp_occ)/sd_occ\n\
    = (obs_occ - exp_occ)/sqrt(var_occ)"
  type: string
  inputBinding:
    position: 0
- id: in_observed_number_occurrencesexpocc
  doc: "obs_occ is the observed number of occurrences\nexp_occ is the expected number\
    \ of occurrences\nsd_occ and var_occ\nare the estimated standard deviation and\
    \ variances\nfor the occurrences, respectively."
  type: string
  inputBinding:
    position: 1
- id: in_dyad_analysis
  doc: "Detect over- and under-represented dyads (i.e. a pair of short\noligonucleotides\
    \ separated by a spacing of fixed width but\nvariable content)."
  type: string
  inputBinding:
    position: 0
- id: in_count_words
  doc: "Program written in C (developed by Matthieu Defrance) to\nensure an efficient\
    \ counting of oligonucleotides. This program\nruns about 100 times faster than\
    \ oligo-analysis but has\nrestricted functionality (only return word occurrences\
    \ and\nfrequencies)."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_one_str
  doc: Output file. If not specified, the result is printed on the
  type: File?
  outputBinding:
    glob: $(inputs.in_one_str)
- id: out_group_rc
  doc: "(default)\ngroup reverse complement with the direct sequence in the\noutput\
    \ file. This avoids redundancy (since the frequence of\nAAAAA is the same as TTTTT\
    \ when one searches on both strands).\nCan be inactivated by the -nogrouprc option.\n\
    Incompatible with -1str."
  type: File?
  outputBinding:
    glob: $(inputs.in_group_rc)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- oligo-analysis
