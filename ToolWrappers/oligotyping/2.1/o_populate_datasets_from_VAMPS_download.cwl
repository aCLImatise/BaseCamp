class: CommandLineTool
id: o_populate_datasets_from_VAMPS_download.cwl
inputs:
- id: in_tax_on
  doc: Isolate a particular taxon
  type: string
  inputBinding:
    prefix: --taxon
- id: in_output
  doc: "Output file name\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- o-populate-datasets-from-VAMPS-download
