class: CommandLineTool
id: bioportal_csv2obo.pl.cwl
inputs:
- id: in_csv_input_file
  doc: CSV input file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_usage
  doc: ': bioportal_csv2obo.pl [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioportal_csv2obo.pl
