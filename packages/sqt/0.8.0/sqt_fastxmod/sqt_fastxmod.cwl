class: CommandLineTool
id: sqt_fastxmod.cwl
inputs:
- id: in_names
  doc: "Keep only records whose name occurs in FILE (one per\nline)"
  type: File
  inputBinding:
    prefix: --names
- id: in_not_names
  doc: "Discard records whose name occurs in FILE (one per\nline)"
  type: File
  inputBinding:
    prefix: --not-names
- id: in_cut_off
  doc: Quality cutoff. Only when input format is FASTQ
  type: string
  inputBinding:
    prefix: --cutoff
- id: in_substitute
  doc: "Randomly substitute bases at probability PROB.\nDefault: 0"
  type: long
  inputBinding:
    prefix: --substitute
- id: in_length
  doc: 'Shorten records to LENGTH (default: do not shorten)'
  type: long
  inputBinding:
    prefix: --length
- id: in_minimum_length
  doc: Discard reads shorter than LENGTH
  type: long
  inputBinding:
    prefix: --minimum-length
- id: in_max_errors
  doc: "Discard reads whose expected number of errors\n(computed from quality values)\
    \ exceeds ERRORS."
  type: long
  inputBinding:
    prefix: --max-errors
- id: in_allowed_characters
  doc: "Discard reads that contain characters other than those\nin CHARS. CHARS is\
    \ case-sensitive. Example: -c\nACGTacgt."
  type: string
  inputBinding:
    prefix: --allowed-characters
- id: in_reverse_complement
  doc: Reverse-complement each sequence
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: in_upper
  doc: Convert sequence characters to uppercase
  type: boolean
  inputBinding:
    prefix: --upper
- id: in_lower
  doc: Convert sequence characters to lowercase
  type: boolean
  inputBinding:
    prefix: --lower
- id: in_constant_quality
  doc: "Set all quality values to QUALITY. Use this to convert\nfrom FASTA to FASTQ."
  type: string
  inputBinding:
    prefix: --constant-quality
- id: in_fast_a
  doc: Always output FASTA (drop qualities if input is FASTQ)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_unique_names
  doc: Make record names unique by appending _1, _2 etc. when
  type: boolean
  inputBinding:
    prefix: --unique-names
- id: in_width
  doc: "Characters per line in output FASTA (default: 80). Set\nto 0 to disallow line\
    \ breaks entirely. This is ignored\nfor FASTQ files."
  type: long
  inputBinding:
    prefix: --width
- id: in_seed
  doc: Set random seed for reproducible runs. Relevant when
  type: string
  inputBinding:
    prefix: --seed
- id: in_substitution_rate
  doc: 'used.(default: use different'
  type: string
  inputBinding:
    prefix: --substitution-rate
- id: in_necessary
  doc: '--limit N, -n N       Pick only the first N sequences (default: all)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sqt
- fastxmod
