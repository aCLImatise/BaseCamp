#!/usr/bin/env cwl-runner

baseCommand:
- gaas_maker_merge_outputs_from_datastore.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_maker_merge_outputs_from_datastore.pl
inputs:
- doc: The path to the input directory. If none given, we assume that the script is
    launched where Maker was run. So, in that case the script will look for the folder
    *.maker.output.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: The name of the output directory. By default the name is annotations
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: description,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: relevant information as possible,
  id: as
  inputBinding:
    prefix: '- as'
  type: string
- doc: used,
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: sample,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: of the expected behaviour that is not occurring.
  id: an
  inputBinding:
    prefix: '- an'
  type: string
