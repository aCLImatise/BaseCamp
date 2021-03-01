class: CommandLineTool
id: seqkit_sort.cwl
inputs:
- id: in_by_length
  doc: by sequence length
  type: boolean?
  inputBinding:
    prefix: --by-length
- id: in_by_name
  doc: by full name instead of just id
  type: boolean?
  inputBinding:
    prefix: --by-name
- id: in_by_seq
  doc: by sequence
  type: boolean?
  inputBinding:
    prefix: --by-seq
- id: in_ignore_case
  doc: ignore case
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_keep_temp
  doc: keep tempory FASTA and .fai file when using 2-pass mode
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_natural_order
  doc: sort in natural order, when sorting by IDs/full name
  type: boolean?
  inputBinding:
    prefix: --natural-order
- id: in_reverse
  doc: reverse the result
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_seq_prefix_length
  doc: length of sequence prefix on which seqkit sorts by sequences (0 for whole sequence)
    (default 10000)
  type: long?
  inputBinding:
    prefix: --seq-prefix-length
- id: in_two_pass
  doc: two-pass mode read files twice to lower memory usage. (only for FASTA format)
  type: boolean?
  inputBinding:
    prefix: --two-pass
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seqkit
- sort
