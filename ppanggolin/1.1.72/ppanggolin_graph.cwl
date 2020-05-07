class: CommandLineTool
id: ppanggolin_graph.cwl
inputs:
- id: pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: string
  inputBinding:
    prefix: --pangenome
- id: remove_high_copy_number
  doc: 'Positive Number: Remove families having a number of copy of gene in a single
    organism above or equal to this threshold in at least one organism (0 or negative
    values are ignored). (default: 0)'
  type: string
  inputBinding:
    prefix: --remove_high_copy_number
- id: tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: string
  inputBinding:
    prefix: --tmpdir
- id: verbose
  doc: '{0,1,2}     Indicate verbose level (0 for warning and errors only, 1 for info,
    2 for debug) (default: 1)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: log
  doc: 'log output file (default: stdout)'
  type: string
  inputBinding:
    prefix: --log
- id: cpu
  doc: 'Number of available cpus (default: 1)'
  type: string
  inputBinding:
    prefix: --cpu
- id: force
  doc: 'Force writing in output directory and in pangenome output file. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- graph
