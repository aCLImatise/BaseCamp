class: CommandLineTool
id: plaScope.sh.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: no_banner
  doc: don't print beautiful banners
  type: boolean
  inputBinding:
    prefix: --no-banner
- id: t
  doc: 'number of threads[OPTIONAL] [default : 8]'
  type: boolean
  inputBinding:
    prefix: -t
- id: o
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
- id: fast_a
  doc: SPAdes assembly fasta file [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- plaScope.sh
