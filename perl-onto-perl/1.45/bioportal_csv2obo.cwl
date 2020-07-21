class: CommandLineTool
id: ../../../bioportal_csv2obo.pl.cwl
inputs:
- id: csv_input_file
  doc: CSV input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- bioportal_csv2obo.pl
