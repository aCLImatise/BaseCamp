class: CommandLineTool
id: ../../../selectreads.cwl
inputs:
- id: in_direct_fasta_file
  doc: direct the FASTA file with matching (and trimmed reads) to a file named OUTPUT
    (default=stdout)
  type: File
  inputBinding:
    prefix: -o
- id: in_count_following_characters
  doc: "count the following characters AGAINST coverage numbers (default=gaponly)\n\
    gaponly: gap character ('-') is counted as lack of coverage;\nnfold: gap character\
    \ AND N-fold ambiguities (N and ?) are counted as lack of coverage;\nthreefold:\
    \ gap character, 4-fold ambiguities, AND 3-fold ambiguities (e.g. M and S) are\
    \ counted as lack of coverage;\nany: ALL incompletely resolved characters are\
    \ counted as lack of coverage;"
  type: long
  inputBinding:
    prefix: -a
- id: in_start_filter_inclusive
  doc: "start of the region to filter, 0-based, INCLUSIVE, must be an integer strictly\
    \ than the length of the alignment (default=0L)\ne.g. -s 102 -e 203 will span\
    \ nucleotides 103 through 204"
  type: long
  inputBinding:
    prefix: -s
- id: in_end_filter_inclusive
  doc: end of the region to filter, INCLUSIVE, 0-based, capped at [length of the alignment
    - 1] (default=0xFFFFFF)
  type: long
  inputBinding:
    prefix: -e
- id: in_require_retained_reads
  doc: "require that retained reads cover at least this proportion of the region (default=0.95)\n\
    must be a floating point in (0,1]"
  type: double
  inputBinding:
    prefix: -c
- id: in_type_data_expected
  doc: "the type of data expected (default=dna)\ndna: DNA or RNA (IUPAC);\nprotein\
    \ : protein (IUPAC);"
  type: string
  inputBinding:
    prefix: -t
- id: in_report_progress_updates
  doc: do not report progress updates and other diagnostics to stderr
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_fasta_file
  doc: direct the FASTA file with matching (and trimmed reads) to a file named OUTPUT
    (default=stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_direct_fasta_file)
cwlVersion: v1.1
baseCommand:
- selectreads
