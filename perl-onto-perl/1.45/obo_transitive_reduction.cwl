class: CommandLineTool
id: ../../../obo_transitive_reduction.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- obo_transitive_reduction.pl
