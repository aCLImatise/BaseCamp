class: CommandLineTool
id: TOBIAS_CreateNetwork.cwl
inputs:
- id: in_tfbs
  doc: '[ [ ...]]   File(s) containing TFBS (with annotation) to create network from'
  type: boolean?
  inputBinding:
    prefix: --TFBS
- id: in_origin
  doc: File containing mapping of TF <-> origin gene
  type: boolean?
  inputBinding:
    prefix: --origin
- id: in_start
  doc: 'Name of node to start in (default: all nodes)'
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_max_len
  doc: 'Maximum number of nodes in paths through graph (default: 4)'
  type: boolean?
  inputBinding:
    prefix: --max-len
- id: in_outdir
  doc: 'Path to output directory (default: createnetwork_output)'
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Path to output directory (default: createnetwork_output)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- CreateNetwork
