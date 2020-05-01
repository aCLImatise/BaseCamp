#!/usr/bin/env cwl-runner

baseCommand:
- gaas_maker_get_rm_genome.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_maker_get_rm_genome.pl
inputs:
- doc: The path to the input directory. If none given, we assume that the script is
    launched where Maker was run. So, in that case the script will look for the folder
    *.maker.output.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: The name of the masked genome file. By default, the name will genome.rm.fa
  id: outfile
  inputBinding:
    prefix: --outfile
  type: boolean
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
