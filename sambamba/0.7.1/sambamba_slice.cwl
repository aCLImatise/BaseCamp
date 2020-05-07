class: CommandLineTool
id: sambamba_slice.cwl
inputs:
- id: output_filename
  doc: output BAM filename
  type: string
  inputBinding:
    prefix: --output-filename
- id: regions
  doc: output only reads overlapping one of regions from the BED file
  type: File
  inputBinding:
    prefix: --regions
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- slice
