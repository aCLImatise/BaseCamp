class: CommandLineTool
id: umis_subset_bamfile_SAM.cwl
inputs:
- id: in_barcodes
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umis
- subset_bamfile
- SAM
