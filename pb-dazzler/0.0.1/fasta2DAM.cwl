class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fasta2DAM.cwl
inputs:
- id: import_files_listed
  doc: ': import files listed 1/line in given file.'
  type: boolean
  inputBinding:
    prefix: -f
- id: import_data_stdin
  doc: ': import data from stdin, use optiona name as data source. : otherwise, import
    sequence of specified files.'
  type: boolean
  inputBinding:
    prefix: -i
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta2DAM
