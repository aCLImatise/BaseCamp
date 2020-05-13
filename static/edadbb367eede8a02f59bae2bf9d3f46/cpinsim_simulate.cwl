class: CommandLineTool
id: cpinsim_simulate.cwl
inputs:
- id: proteins
  doc: Path to a csv-file containing the parsed proteins.
  type: string
  inputBinding:
    position: 0
- id: output_graph
  doc: Pickle the complete graph at the end of simulation (after last dissociation
    step) and write it to the given path.
  type: File
  inputBinding:
    prefix: --output-graph
- id: output_log
  doc: Write some log information of each simulation stept to the given path. If not
    specified, std-out is used.
  type: File
  inputBinding:
    prefix: --output-log
outputs: []
cwlVersion: v1.1
baseCommand:
- cpinsim
- simulate
