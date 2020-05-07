class: CommandLineTool
id: gaas_maker_merge_outputs_from_datastore.pl.cwl
inputs:
- id: i
  doc: The path to the input directory. If none given, we assume that the script is
    launched where Maker was run. So, in that case the script will look for the folder
    *.maker.output.
  type: boolean
  inputBinding:
    prefix: -i
- id: output
  doc: The name of the output directory. By default the name is annotations
  type: string
  inputBinding:
    prefix: --output
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_maker_merge_outputs_from_datastore.pl
