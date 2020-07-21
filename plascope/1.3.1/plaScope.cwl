class: CommandLineTool
id: ../../../plaScope.sh.cwl
inputs:
- id: no_banner
  doc: don't print beautiful banners
  type: boolean
  inputBinding:
    prefix: --no-banner
- id: number_of_threads
  doc: 'number of threads[OPTIONAL] [default : 8]'
  type: boolean
  inputBinding:
    prefix: -t
- id: output_directory
  doc: 'output directory [OPTIONAL] [default : current directory]'
  type: boolean
  inputBinding:
    prefix: -o
- id: sample
  doc: Sample name [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --sample
- id: db_dir
  doc: path to centrifuge database [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --db_dir
- id: db_name
  doc: centrifuge database name [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --db_name
- id: forward_pairedend_reads
  doc: forward paired-end reads [MANDATORY]
  type: boolean
  inputBinding:
    prefix: '-1'
- id: reverse_pairedend_reads
  doc: reverse paired-end reads [MANDATORY]
  type: boolean
  inputBinding:
    prefix: '-2'
- id: fast_a
  doc: SPAdes assembly fasta file [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --fasta
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- plaScope.sh
