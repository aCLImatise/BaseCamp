class: CommandLineTool
id: rsat_peak_motifs.cwl
inputs:
- id: in_disco
  doc: "or by entering a comma-separated list of algorithms:\n-disco oligos,dyads\n\
    \e[1mDefault motif discovery algorithms\e[0m\n\e[33moligos\e[0m\nRun \e[33moligo-analysis\e\
    [0m to detect over-represented oligonucleotides\nof a given length (k, specified\
    \ with option -l) in the test set\n(van Helden et al., 1998). Prior frequencies\
    \ of oligonucleotides\nare taken from Markov model of order m (see option -markov)\n\
    estimated from the test set sequences themselves.\n\e[33mdyads\e[0m\nRun \e[33mdyad-analysis\e\
    [0m to detect over-represented dyads, i.e. pairs\nof short oligonucleotides (monads)\
    \ spaced by a region of fixed\nwidth but variable content (van Helden et al.,\
    \ 2000). Spaced\nmotifs are typical of certain classes of transcription factors\n\
    forming homo- or heterodimers.\nBy default, peak-motifs analyzes pairs of trinucleotides\
    \ with\nany spacing between 0 and 20.\nThe expected frequency of each dyad is\
    \ estimated as the product\nof its monad frequencies in the sequences (option\
    \ -bg monads of\ndyad-analysis).\n\e[33mpositions\e[0m\nRun \e[33mposition-analysis\e\
    [0m to detect oligonucleotides showing a\npositional bias, i.e. have a non-homogeneous\
    \ distribution in the\npeak sequence set.\nThis method was initially developed\
    \ to analyze termination and\npoly-adenylation signals in downstream sequences\
    \ (van Helden et\nal., 2001), and it turns out to be very efficient for detecting\n\
    motifs centred on the ChIP-seq peaks. For ChIP-seq analysis, the\nreference position\
    \ is the center of each sequence.\nThe reference position can however be changed\
    \ with the option\n\e[33m-origin\e[0m (center, start, end).\nNote that \e[33mpeak-motifs\e\
    [0m also uses \e[33mposition-analysis\e[0m for the task\n\e[1mcomposition\e[0m,\
    \ in order to detect compositional biases (residues,\ndinucleotides) in the test\
    \ sequence set.\n\e[33mlocal_words\e[0m\nRun \e[33mlocal-word-analysis\e[0m to\
    \ detect locally over-represented\noligonucleotides and dyads.\nThe program \e\
    [33mlocal-word-analysis\e[0m (Matthieu Defrance,unpublished)\ntests the over-representation\
    \ of each possible word (oligo,\ndyad) in positional windows in the sequence set.\n\
    Two types of background models are supported: (i) Markov model\nof order m estimated\
    \ locally (within the window under\nconsideration; (ii) the frequency observed\
    \ for a word in the\nwhole sequence set is used as estimator of the prior probability\n\
    of this word in the window.\nAfter our first trials, this program gives excellent\
    \ results in\nChIP-seq datasets, because its senstivitity increases with large\n\
    number of sequences (several hundreds/thousands), and its\nbackground model is\
    \ more stringent than for programs computing\nthe global over-representation (oligo-analysis,\
    \ dyad-analysis).\n\e[33mmerged_words\e[0m\nExtract a position-specific scoring\
    \ matrix (using\n\e[33mmatrix-from-patterns\e[0m) from all the words discovered\
    \ by the\nselected string-based motif disovery algorithms\n(oigos,dyads,positions\
    \ and/or local_words)."
  type: long
  inputBinding:
    prefix: -disco
- id: in_two_tails
  doc: ', which detects both under- and over-represented patterns.'
  type: boolean
  inputBinding:
    prefix: -two_tails
- id: in_peak_motifs
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_testing_dot
  doc: Matthieu Defrance <defrance@ccg.unam.mx>
  type: string
  inputBinding:
    position: 0
- id: in_supported_dot
  doc: "\e[1mOUTPUT FORMAT\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_track_dot
  doc: The 4th column of the BED file must correspond to the fasta headers.
  type: string
  inputBinding:
    position: 0
- id: in_file_should_sufficiently
  doc: The file should be sufficiently large (several Mb) to provide a
  type: string
  inputBinding:
    position: 0
- id: in_server_dot
  doc: "\e[1m-disco"
  type: string
  inputBinding:
    position: 0
- id: in_when_option_mnomergelengthsm
  doc: "When the option \e[33m-no_merge_lengths\e[0m is active, matrices are built"
  type: string
  inputBinding:
    position: 0
- id: in_one_five_seven_eight_eight_eight_dot
  doc: "\e[33mmatrix-quality\e[0m"
  type: long
  inputBinding:
    position: 0
- id: in_pss_mdot
  doc: If included by default, they can take a lot of disk space for large
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- peak-motifs
