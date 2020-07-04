class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sambamba_slice.cwl
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
- id: samba_mba_slice
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- slice
