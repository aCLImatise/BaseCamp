class: CommandLineTool
id: plaScope.sh.cwl
inputs:
- id: in_no_banner
  doc: don't print beautiful banners
  type: boolean
  inputBinding:
    prefix: --no-banner
- id: in_number_of_threads
  doc: 'number of threads[OPTIONAL] [default : 8]'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_output_directory
  doc: 'output directory [OPTIONAL] [default : current directory]'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_sample
  doc: Sample name [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --sample
- id: in_db_dir
  doc: path to centrifuge database [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --db_dir
- id: in_db_name
  doc: centrifuge database name [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --db_name
- id: in_forward_pairedend_reads
  doc: forward paired-end reads [MANDATORY]
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_reverse_pairedend_reads
  doc: reverse paired-end reads [MANDATORY]
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_fast_a
  doc: SPAdes assembly fasta file [MANDATORY]
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'output directory [OPTIONAL] [default : current directory]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- plaScope.sh
