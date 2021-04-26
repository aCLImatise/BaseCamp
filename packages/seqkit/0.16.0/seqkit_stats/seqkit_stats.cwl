class: CommandLineTool
id: seqkit_stats.cwl
inputs:
- id: in_all
  doc: all statistics, including quartiles of seq length, sum_gap, N50
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_basename
  doc: only output basename of files
  type: boolean?
  inputBinding:
    prefix: --basename
- id: in_fq_encoding
  doc: "fastq quality encoding. available values: 'sanger', 'solexa', 'illumina-1.3+',\
    \ 'illumina-1.5+', 'illumina-1.8+'. (default \"sanger\")"
  type: double?
  inputBinding:
    prefix: --fq-encoding
- id: in_gap_letters
  doc: gap letters (default "- .")
  type: string?
  inputBinding:
    prefix: --gap-letters
- id: in_skip_err
  doc: skip error, only show warning message
  type: boolean?
  inputBinding:
    prefix: --skip-err
- id: in_stdin_label
  doc: label for replacing default "-" for stdin (default "-")
  type: string?
  inputBinding:
    prefix: --stdin-label
- id: in_tabular
  doc: output in machine-friendly tabular format
  type: boolean?
  inputBinding:
    prefix: --tabular
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqkit:0.16.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- seqkit
- stats
