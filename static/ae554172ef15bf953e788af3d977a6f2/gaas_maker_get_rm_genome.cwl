class: CommandLineTool
id: gaas_maker_get_rm_genome.pl.cwl
inputs:
- id: i
  doc: The path to the input directory. If none given, we assume that the script is
    launched where Maker was run. So, in that case the script will look for the folder
    *.maker.output.
  type: boolean
  inputBinding:
    prefix: -i
- id: outfile
  doc: The name of the masked genome file. By default, the name will genome.rm.fa
  type: boolean
  inputBinding:
    prefix: --outfile
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
- gaas_maker_get_rm_genome.pl
