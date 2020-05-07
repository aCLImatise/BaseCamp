class: CommandLineTool
id: TOBIAS_CreateNetwork.cwl
inputs:
- id: tfbs
  doc: '[ [ ...]]   File(s) containing TFBS (with annotation) to create network from'
  type: boolean
  inputBinding:
    prefix: --TFBS
- id: origin
  doc: File containing mapping of TF <-> origin gene
  type: boolean
  inputBinding:
    prefix: --origin
- id: start
  doc: 'Name of node to start in (default: all nodes)'
  type: boolean
  inputBinding:
    prefix: --start
- id: max_len
  doc: 'Maximum number of nodes in paths through graph (default: 4)'
  type: boolean
  inputBinding:
    prefix: --max-len
- id: outdir
  doc: 'Path to output directory (default: createnetwork_output)'
  type: boolean
  inputBinding:
    prefix: --outdir
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- CreateNetwork
