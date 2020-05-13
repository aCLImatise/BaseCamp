class: CommandLineTool
id: seqkit_mutate.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: by_name
  doc: '[match seqs to mutate] match by full name instead of just id'
  type: boolean
  inputBinding:
    prefix: --by-name
- id: deletion
  doc: 'deletion mutation: deleting subsequence in a range. e.g., -d 1:2 for deleting
    leading two bases, -d -3:-1 for removing last 3 bases'
  type: string
  inputBinding:
    prefix: --deletion
- id: ignore_case
  doc: '[match seqs to mutate] ignore case of search pattern'
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: insertion
  doc: 'insertion mutation: inserting bases behind of given position, e.g., -i 0:ACGT
    for inserting ACGT at the beginning, -1:* for add * to the end'
  type: string
  inputBinding:
    prefix: --insertion
- id: invert_match
  doc: '[match seqs to mutate] invert the sense of matching, to select non-matching
    records'
  type: boolean
  inputBinding:
    prefix: --invert-match
- id: pattern
  doc: "[match seqs to mutate] search pattern (multiple values supported. Attention:\
    \ use double quotation marks for patterns containing comma, e.g., -p '\"A{2,}\"\
    '))"
  type: string
  inputBinding:
    prefix: --pattern
- id: pattern_file
  doc: '[match seqs to mutate] pattern file (one record per line)'
  type: string
  inputBinding:
    prefix: --pattern-file
- id: point
  doc: 'point mutation: changing base at given position. e.g., -p 2:C for setting
    2nd base as C, -p -1:A for change last base as A'
  type: string
  inputBinding:
    prefix: --point
- id: use_regexp
  doc: '[match seqs to mutate] search patterns are regular expression'
  type: boolean
  inputBinding:
    prefix: --use-regexp
- id: alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean
  inputBinding:
    prefix: --id-ncbi
- id: id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string
  inputBinding:
    prefix: --id-regexp
- id: in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: string
  inputBinding:
    prefix: --infile-list
- id: line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long
  inputBinding:
    prefix: --line-width
- id: out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: string
  inputBinding:
    prefix: --out-file
- id: quiet
  doc: be quiet and do not show extra information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string
  inputBinding:
    prefix: --seq-type
- id: threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others) (default
    2)'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- seqkit
- mutate
