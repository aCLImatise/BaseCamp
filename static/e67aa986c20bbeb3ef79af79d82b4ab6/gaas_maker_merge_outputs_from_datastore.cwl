class: CommandLineTool
id: ../../../gaas_maker_merge_outputs_from_datastore.pl.cwl
inputs:
- id: path_none_assume
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_maker_merge_outputs_from_datastore.pl
