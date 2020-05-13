class: CommandLineTool
id: seqkit_stats.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: all
  doc: all statistics, including quartiles of seq length, sum_gap, N50
  type: boolean
  inputBinding:
    prefix: --all
- id: basename
  doc: only output basename of files
  type: boolean
  inputBinding:
    prefix: --basename
- id: fq_encoding
  doc: "fastq quality encoding. available values: 'sanger', 'solexa', 'illumina-1.3+',\
    \ 'illumina-1.5+', 'illumina-1.8+'. (default \"sanger\")"
  type: string
  inputBinding:
    prefix: --fq-encoding
- id: gap_letters
  doc: gap letters (default "- .")
  type: string
  inputBinding:
    prefix: --gap-letters
- id: skip_err
  doc: skip error, only show warning message
  type: boolean
  inputBinding:
    prefix: --skip-err
- id: tabular
  doc: output in machine-friendly tabular format
  type: boolean
  inputBinding:
    prefix: --tabular
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
- stats
