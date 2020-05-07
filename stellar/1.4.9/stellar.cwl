class: CommandLineTool
id: stellar.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: epsilon
  doc: 'Maximal error rate (max 0.25). In range [0.0000001..0.25]. Default: 0.05.'
  type: string
  inputBinding:
    prefix: --epsilon
- id: minlength
  doc: 'Minimal length of epsilon-matches. In range [0..inf]. Default: 100.'
  type: long
  inputBinding:
    prefix: --minLength
- id: forward
  doc: Search only in forward strand of database.
  type: boolean
  inputBinding:
    prefix: --forward
- id: reverse
  doc: Search only in reverse complement of database.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: alphabet
  doc: Alphabet type of input sequences (dna, rna, dna5, rna5, protein, char). One
    of dna, dna5, rna, rna5, protein, and char.
  type: string
  inputBinding:
    prefix: --alphabet
- id: verbose
  doc: Set verbosity mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: km_er
  doc: Length of the q-grams (max 32). In range [1..32].
  type: long
  inputBinding:
    prefix: --kmer
- id: repeat_period
  doc: 'Maximal period of low complexity repeats to be filtered. Default: 1.'
  type: long
  inputBinding:
    prefix: --repeatPeriod
- id: repeat_length
  doc: 'Minimal length of low complexity repeats to be filtered. Default: 1000.'
  type: long
  inputBinding:
    prefix: --repeatLength
- id: abundance_cut
  doc: 'k-mer overabundance cut ratio. In range [0..1]. Default: 1.'
  type: string
  inputBinding:
    prefix: --abundanceCut
- id: x_drop
  doc: 'Maximal x-drop for extension. Default: 5.'
  type: string
  inputBinding:
    prefix: --xDrop
- id: verification
  doc: 'Verification strategy: exact or bestLocal or bandedGlobal One of exact, bestLocal,
    and bandedGlobal. Default: exact.'
  type: string
  inputBinding:
    prefix: --verification
- id: disable_thresh
  doc: Maximal number of verified matches before disabling verification for one query
    sequence (default infinity). In range [0..inf].
  type: long
  inputBinding:
    prefix: --disableThresh
- id: num_matches
  doc: 'Maximal number of kept matches per query and database. If STELLAR finds more
    matches, only the longest ones are kept. Default: 50.'
  type: long
  inputBinding:
    prefix: --numMatches
- id: sort_thresh
  doc: 'Number of matches triggering removal of duplicates. Choose a smaller value
    for saving space. Default: 500.'
  type: long
  inputBinding:
    prefix: --sortThresh
- id: out
  doc: 'Name of output file. Valid filetypes are: .txt and .gff. Default: stellar.gff.'
  type: string
  inputBinding:
    prefix: --out
- id: out_disabled
  doc: 'Name of output file for disabled query sequences. Valid filetypes are: .fasta
    and .fa. Default: stellar.disabled.fasta.'
  type: string
  inputBinding:
    prefix: --outDisabled
outputs: []
cwlVersion: v1.1
baseCommand:
- stellar
