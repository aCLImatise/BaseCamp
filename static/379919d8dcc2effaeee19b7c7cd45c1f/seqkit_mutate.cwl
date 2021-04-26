class: CommandLineTool
id: seqkit_mutate.cwl
inputs:
- id: in_n__c
  doc: ":-1                      n\n2:-2      C G T N a c g t\n1:-1    A C G T N a\
    \ c g t n\n1:12    A C G T N a c g t n"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_one_two
  doc: :-1    A C G T N a c g t n
  type: boolean?
  inputBinding:
    prefix: '-12'
- id: in_by_name
  doc: '[match seqs to mutate] match by full name instead of just id'
  type: boolean?
  inputBinding:
    prefix: --by-name
- id: in_deletion
  doc: 'deletion mutation: deleting subsequence in a range. e.g., -d 1:2 for deleting
    leading two bases, -d -3:-1 for removing last 3 bases'
  type: long?
  inputBinding:
    prefix: --deletion
- id: in_ignore_case
  doc: '[match seqs to mutate] ignore case of search pattern'
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_insertion
  doc: 'insertion mutation: inserting bases behind of given position, e.g., -i 0:ACGT
    for inserting ACGT at the beginning, -1:* for add * to the end'
  type: long?
  inputBinding:
    prefix: --insertion
- id: in_invert_match
  doc: '[match seqs to mutate] invert the sense of matching, to select non-matching
    records'
  type: boolean?
  inputBinding:
    prefix: --invert-match
- id: in_pattern
  doc: "[match seqs to mutate] search pattern (multiple values supported. Attention:\
    \ use double quotation marks for patterns containing comma, e.g., -p '\"A{2,}\"\
    '))"
  type: long?
  inputBinding:
    prefix: --pattern
- id: in_pattern_file
  doc: '[match seqs to mutate] pattern file (one record per line)'
  type: File?
  inputBinding:
    prefix: --pattern-file
- id: in_point_mutation_changing
  doc: 'point mutation: changing base at given position. e.g., -p 2:C for setting
    2nd base as C, -p -1:A for change last base as A'
  type: long?
  inputBinding:
    prefix: --point
- id: in_use_regexp
  doc: '[match seqs to mutate] search patterns are regular expression'
  type: boolean?
  inputBinding:
    prefix: --use-regexp
- id: in_alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long?
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: in_id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean?
  inputBinding:
    prefix: --id-ncbi
- id: in_id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string?
  inputBinding:
    prefix: --id-regexp
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File?
  inputBinding:
    prefix: --infile-list
- id: in_line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long?
  inputBinding:
    prefix: --line-width
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_quiet
  doc: be quiet and do not show extra information
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string?
  inputBinding:
    prefix: --seq-type
- id: in_threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also
    set with environment variable SEQKIT_THREADS) (default 2)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_seq
  doc: A C G T N a c g t n
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqkit:0.16.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- seqkit
- mutate
