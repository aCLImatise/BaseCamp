class: CommandLineTool
id: stellar.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_epsilon
  doc: "Maximal error rate (max 0.25). In range [0.0000001..0.25]. Default:\n0.05."
  type: long?
  inputBinding:
    prefix: --epsilon
- id: in_minlength
  doc: 'Minimal length of epsilon-matches. In range [0..inf]. Default: 100.'
  type: long?
  inputBinding:
    prefix: --minLength
- id: in_forward
  doc: Search only in forward strand of database.
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: Search only in reverse complement of database.
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_alphabet
  doc: "Alphabet type of input sequences (dna, rna, dna5, rna5, protein,\nchar). One\
    \ of dna, dna5, rna, rna5, protein, and char."
  type: long?
  inputBinding:
    prefix: --alphabet
- id: in_verbose
  doc: Set verbosity mode.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_km_er
  doc: Length of the q-grams (max 32). In range [1..32].
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_repeat_period
  doc: 'Maximal period of low complexity repeats to be filtered. Default: 1.'
  type: long?
  inputBinding:
    prefix: --repeatPeriod
- id: in_repeat_length
  doc: "Minimal length of low complexity repeats to be filtered. Default:\n1000."
  type: long?
  inputBinding:
    prefix: --repeatLength
- id: in_abundance_cut
  doc: 'k-mer overabundance cut ratio. In range [0..1]. Default: 1.'
  type: double?
  inputBinding:
    prefix: --abundanceCut
- id: in_x_drop
  doc: 'Maximal x-drop for extension. Default: 5.'
  type: long?
  inputBinding:
    prefix: --xDrop
- id: in_verification
  doc: "Verification strategy: exact or bestLocal or bandedGlobal One of\nexact, bestLocal,\
    \ and bandedGlobal. Default: exact."
  type: string?
  inputBinding:
    prefix: --verification
- id: in_disable_thresh
  doc: "Maximal number of verified matches before disabling verification for\none\
    \ query sequence (default infinity). In range [0..inf]."
  type: long?
  inputBinding:
    prefix: --disableThresh
- id: in_num_matches
  doc: "Maximal number of kept matches per query and database. If STELLAR\nfinds more\
    \ matches, only the longest ones are kept. Default: 50."
  type: long?
  inputBinding:
    prefix: --numMatches
- id: in_sort_thresh
  doc: "Number of matches triggering removal of duplicates. Choose a smaller\nvalue\
    \ for saving space. Default: 500."
  type: long?
  inputBinding:
    prefix: --sortThresh
- id: in_out
  doc: "Name of output file. Valid filetypes are: .txt and .gff. Default:\nstellar.gff."
  type: File?
  inputBinding:
    prefix: --out
- id: in_out_disabled
  doc: "Name of output file for disabled query sequences. Valid filetypes\nare: .fasta\
    \ and .fa. Default: stellar.disabled.fasta."
  type: File?
  inputBinding:
    prefix: --outDisabled
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Name of output file. Valid filetypes are: .txt and .gff. Default:\nstellar.gff."
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_disabled
  doc: "Name of output file for disabled query sequences. Valid filetypes\nare: .fasta\
    \ and .fa. Default: stellar.disabled.fasta."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_disabled)
hints: []
cwlVersion: v1.1
baseCommand:
- stellar
