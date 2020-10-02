class: CommandLineTool
id: mercat.cwl
inputs:
- id: in_pathtoinputfile
  doc: path-to-input-file
  type: File
  inputBinding:
    prefix: -i
- id: in_pathtofoldercontaininginputfiles
  doc: path-to-folder-containing-input-files
  type: File
  inputBinding:
    prefix: -f
- id: in_kmer_length
  doc: kmer length
  type: long
  inputBinding:
    prefix: -k
- id: in_no_of_cores
  doc: no of cores [default = all]
  type: string
  inputBinding:
    prefix: -n
- id: in_minimum_kmer_count
  doc: minimum kmer count [default = 10]
  type: long
  inputBinding:
    prefix: -c
- id: in_pro
  doc: protein input file
  type: boolean
  inputBinding:
    prefix: -pro
- id: in_fastq_input_file
  doc: fastQ input file
  type: boolean
  inputBinding:
    prefix: -q
- id: in_run_prodigal_fasta
  doc: run prodigal on fasta file
  type: boolean
  inputBinding:
    prefix: -p
- id: in__trimmomatic_options
  doc: '[T]      Trimmomatic options'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_split_mb_files
  doc: '[S]      Split into x MB files. Default = 100MB'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_var_10
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mercat
