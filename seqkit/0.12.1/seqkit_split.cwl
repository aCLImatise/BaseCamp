class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqkit_split.cwl
inputs:
- id: c_g_t
  doc: :-1    A C G T N a c g t n
  type: boolean
  inputBinding:
    prefix: '-12'
- id: by_id
  doc: split squences according to sequence ID
  type: boolean
  inputBinding:
    prefix: --by-id
- id: by_part
  doc: split sequences into N parts
  type: long
  inputBinding:
    prefix: --by-part
- id: by_region
  doc: split squences according to subsequence of given region. e.g 1:12 for first
    12 bases, -12:-1 for last 12 bases. type "seqkit split -h" for more examples
  type: string
  inputBinding:
    prefix: --by-region
- id: by_size
  doc: split sequences into multi parts with N sequences
  type: long
  inputBinding:
    prefix: --by-size
- id: dry_run
  doc: dry run, just print message and no files will be created.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: force
  doc: overwrite output directory
  type: boolean
  inputBinding:
    prefix: --force
- id: keep_temp
  doc: keep tempory FASTA and .fai file when using 2-pass mode
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: out_dir
  doc: output directory (default value is $infile.split)
  type: string
  inputBinding:
    prefix: --out-dir
- id: two_pass
  doc: two-pass mode read files twice to lower memory usage. (only for FASTA format)
  type: boolean
  inputBinding:
    prefix: --two-pass
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
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqkit
- split
