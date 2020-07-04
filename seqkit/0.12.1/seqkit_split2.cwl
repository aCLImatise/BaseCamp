class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqkit_split2.cwl
inputs:
- id: by_length
  doc: split sequences into chunks of N bases, supports K/M/G suffix
  type: string
  inputBinding:
    prefix: --by-length
- id: by_part
  doc: split sequences into N parts
  type: long
  inputBinding:
    prefix: --by-part
- id: by_size
  doc: split sequences into multi parts with N sequences
  type: long
  inputBinding:
    prefix: --by-size
- id: force
  doc: overwrite output directory
  type: boolean
  inputBinding:
    prefix: --force
- id: out_dir
  doc: output directory (default value is $infile.split)
  type: string
  inputBinding:
    prefix: --out-dir
- id: read_one
  doc: read1 file
  type: string
  inputBinding:
    prefix: --read1
- id: read_two
  doc: read2 file
  type: string
  inputBinding:
    prefix: --read2
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
- split2
