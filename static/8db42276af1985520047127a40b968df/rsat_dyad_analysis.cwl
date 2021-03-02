class: CommandLineTool
id: rsat_dyad_analysis.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_sequence_analyzed_sequences
  doc: "The sequence to be analyzed. Multiple sequences can\nbe entered at once with\
    \ most sequence formats (see below)."
  type: File?
  inputBinding:
    prefix: -o
- id: in_mask
  doc: "|lower\nMask lower or uppercases, respecively, i.e. replace\nselected case\
    \ by N characters."
  type: string?
  inputBinding:
    prefix: -mask
- id: in_format
  doc: "Input sequence format. Various standards are\nsupported.\nraw: the raw sequence\
    \ without any identifier or comment.\nmulti: several raw sequences concatenated.\n\
    IG: IntelliGenetics format.\nFastA: the sequence format used by FastA, BLAST,\
    \ Gibbs\nsampler and a lot of other bioinformatic programs.\nWconsensus: the format\
    \ defined by Jerry Hertz for\nhis programs (patser, consensus, wconsensus)."
  type: string?
  inputBinding:
    prefix: -format
- id: in_oligolengtholigonucleotide_size_default
  doc: "#    oligo_length\nOligonucleotide size (default 3)\nThis is the size of a\
    \ single element (a half dyad)."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_sp
  doc: "#-# spacing (default 0-20)\nSpacing between the elements of the dyad.\nThe\
    \ spacing is the number of bases between the end of\nthe first element and the\
    \ start of the second one.\nSpacing formats\n---------------\nA single integer\
    \ value means that the spacing is fixed.\nVariable spacing can be introdued by\
    \ entering the min and\nmax values separated by a hyphen.\nFor example 8-12 means\
    \ that all occurrences of the dyad\nwith a spacing between 8 and 12 qill be counted\
    \ together\nand their significance estimated globally.\nWarning, this is different\
    \ from scanning one by one the\nspacing values 8 to 12."
  type: boolean?
  inputBinding:
    prefix: -sp
- id: in_type
  doc: "(dr|ir|any)\nIn order to fasten execution, the program can be asked\nto restrict\
    \ its analysis to symmetric dyads.\nThree types are accepted\ndr   direct repeats:\
    \ the second element is the same as the\nfirst one\nir   inverted repeats: the\
    \ second element is the reverse\ncomplement of the first one.\nrep  repeats: direct\
    \ and inverted repeats are evaluated\nany  (default)\nWhen selecting the option\
    \ any, the analysis is\nperformed on all non-symmetric dyads as well."
  type: string?
  inputBinding:
    prefix: -type
- id: in_accept
  doc: "Specify a file containing a list of accepted\ndyads. The analysis is then\
    \ restricted to these\ndyads. Since the number of tested dyads is reduced by\n\
    this selection, the multitesting correction is\ngenerally lower, which increases\
    \ the significance of\nthe accepted dyads, compared to the default situation\n\
    where all dyads are analyzed.\nFile format: the first word of each row specifies\
    \ a\ndyad. Subsequent words are ignored."
  type: File?
  inputBinding:
    prefix: -accept
- id: in_groups_p
  doc: "Group dyads made of the same words (monads) but with\ndifferent spacings."
  type: boolean?
  inputBinding:
    prefix: -groupsp
- id: in_two_str
  doc: "count on oth strands\nThe occurrences of each oligonucleotide are summed on\
    \ both\nstrands. This allows to detect elements which act in an\norientation-insensitive\
    \ way (as is generally the case for\nyeast upstream elements)."
  type: boolean?
  inputBinding:
    prefix: -2str
- id: in_one_str
  doc: "single strand count\nonly the direct strand is considered for oligonucleotide\
    \ and\ndyad occurrence counting."
  type: boolean?
  inputBinding:
    prefix: -1str
- id: in_prot
  doc: "input sequence is proteic. In this case, the analysis\nconcerns pairs of oligopeptides\
    \ instead of oligonucleotides"
  type: boolean?
  inputBinding:
    prefix: -prot
- id: in_exp_freq
  doc: "file with an expected frequency table\nBy default, the frequency expected\
    \ for each dyad is the\nproduct of the frequency expected for each element\n(oligonucleotide):\n\
    exp(dyad) = exp(oligo1)*exp(oligo2)\nBy default, the oligonucleotide frequencies\
    \ observed in the\ninput sequences are used to estimate the expected oligo\nfrequencies.\n\
    Alternatively, predefined frequency tables can be used.\nThese tables can for\
    \ instance be calculated on basis of\n- the whole yeast genome\n- all yeast intergenic\
    \ regions\n- all yeast gene regions\nThis allows to correct the bias due to the\
    \ highly variable\ndistribution of oligonucleotides observed in the yeast genome."
  type: boolean?
  inputBinding:
    prefix: -expfreq
- id: in_ncf
  doc: "(deprecated, use \"-bg intergenic\" instead)\nuse intergenic frequencies as\
    \ background frequencies"
  type: boolean?
  inputBinding:
    prefix: -ncf
- id: in_bg
  doc: "background model\nType of sequences used as background model for\nestimating\
    \ expected dyad frequencies.\nEither -org or -taxon is required with the option\
    \ -bg.\nSupported models:\n-bg upstream\nall upstream sequences, allowing overlap\
    \ with\nupstream ORFs\n-bg upstream-noorf\nall upstream sequences, preventing\
    \ overlap\nwith upstream ORFs\n-bg intergenic\nintergenic frequencies\nWhole set\
    \ of intergenic regions, including\nupstream and downstream sequences\n-bg monads\
    \ (default)\nCalcualte expected dyad frequency from the monad\nfrequencies observed\
    \ in the input sequences.\n-bg input\nSame as -bg monads, allowed for consistency\
    \ with\noligo-analysis."
  type: boolean?
  inputBinding:
    prefix: -bg
- id: in_org
  doc: organism
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
- id: in_tho_sig
  doc: "#\nThreshold on occurrence significance.\n(obsolete: use -lth occ_sig instead)"
  type: boolean?
  inputBinding:
    prefix: -thosig
- id: in_lth
  doc: "value\nLower threshold on some parameter. All patterns with a\nparameter value\
    \ smaller than the threshold are\ndiscarded.\nSupported parameters: occ,occ_P,occ_E,occ_sig,observed_freq,exp_freq,zscore,mseq,ms_P,ms_E,ms_sig,ratio,rank\n\
    Example: select patterns with a positive value for the\noccurrence significance.\n\
    -lth occ_sig 0"
  type: long?
  inputBinding:
    prefix: -lth
- id: in_uth
  doc: "value\nUpper threshold on some parameter. All patterns with a\nparameter value\
    \ higher than the threshold are\ndiscarded.\nSupported parameters: occ,occ_P,occ_E,occ_sig,observed_freq,exp_freq,zscore,mseq,ms_P,ms_E,ms_sig,ratio,rank\n\
    Example: to select no more than 50 patterns\n-uth rank 50"
  type: long?
  inputBinding:
    prefix: -uth
- id: in_sort
  doc: sort results by decreasing order of significance
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_return
  doc: "output fields may contain one or several of the following\nwords:\nfreq\n\
    occ\nproba (binomial probability)\nzscore\nratio\nrank\nthe fields have to be\
    \ separated by commas\nBy default, only occurrences are returned."
  type: string?
  inputBinding:
    prefix: -return
- id: in_under
  doc: "detect under-represented instead of over-represented\ndyads (left-tail significance\
    \ test)."
  type: boolean?
  inputBinding:
    prefix: -under
- id: in_two_tails
  doc: "detect under-represented and over-represented dyads\n(two-tail significance\
    \ test)."
  type: boolean?
  inputBinding:
    prefix: -two_tails
- id: in_zero_occ
  doc: "Report also dyads with zero occurrences (provided they\nfit the other thresholds).\
    \  By default, the program\nreports only patterns present in the sequence.  If\
    \ the\nleft tail or two-tail test is applied, patterns with\nzero occurrences\
    \ are automatically taken into\naccount.\nIn some other cases, one would also\
    \ like to detect\npatterns absent from the sequence. This is the\nfunction of\
    \ the option -zeroocc."
  type: boolean?
  inputBinding:
    prefix: -zeroocc
- id: in_quick
  doc: "Quick count mode: delegate the counting of word\noccurrences to count-words,\
    \ a program written in C by\nMatthieu Defrance.\nThis option is incompatible with\
    \ the following output\nfields:"
  type: boolean?
  inputBinding:
    prefix: -quick
- id: in_noov
  doc: do not allow overlapping matches of the same word
  type: boolean?
  inputBinding:
    prefix: -noov
- id: in_timeout
  doc: "#\ntimeout (in seconds). Default = 3600.\ndyad-analysis can be time consuming.\
    \ In order to\nprotect the server from endless queries, the program\nwill automatically\
    \ stop after 1 hour (default) of\ncalculation. The time out value can be changed\
    \ for\nheavy tasks."
  type: boolean?
  inputBinding:
    prefix: -timeout
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
- id: in_statistics
  doc: sequences
  type: string
  inputBinding:
    position: 0
- id: in_pattern_discovery
  doc: OPTIONS
  type: string
  inputBinding:
    position: 1
- id: in_oligonucleotide_dot
  doc: Sig value higher than 0
  type: string
  inputBinding:
    position: 0
- id: in_pxx_sum_pj
  doc: P(X>=x) =  1 - SUM P(j)
  type: long
  inputBinding:
    position: 0
- id: in_accuracy_dot
  doc: 'Interpretation: the P-value (Pval) represents the nominal risk'
  type: string
  inputBinding:
    position: 0
- id: in_pxx_sum_pxi
  doc: P(X<=x) =  SUM P(X=i)
  type: long
  inputBinding:
    position: 0
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sequence_analyzed_sequences
  doc: "The sequence to be analyzed. Multiple sequences can\nbe entered at once with\
    \ most sequence formats (see below)."
  type: File?
  outputBinding:
    glob: $(inputs.in_sequence_analyzed_sequences)
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- dyad-analysis
