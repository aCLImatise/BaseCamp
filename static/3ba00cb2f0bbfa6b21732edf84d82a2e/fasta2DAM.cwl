class: CommandLineTool
id: fasta2DAM.cwl
inputs:
- id: f
  doc: ': import files listed 1/line in given file.'
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: ': import data from stdin, use optiona name as data source. : otherwise, import
    sequence of specified files.'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta2DAM
