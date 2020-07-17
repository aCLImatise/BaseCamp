class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MuSE_call.cwl
inputs:
- id: faidx_indexed_file
  doc: faidx indexed reference sequence file
  type: File
  inputBinding:
    prefix: -f
- id: single_region_chrpospos
  doc: single region (chr:pos-pos) where somatic mutations are called
  type: string
  inputBinding:
    prefix: -r
- id: list_chrpospos_bed
  doc: list of regions (chr:pos-pos or BED), one region per line
  type: File
  inputBinding:
    prefix: -l
- id: output_file_name
  doc: output file name (suffix '.MuSE.txt' is automatically added)
  type: string
  inputBinding:
    prefix: -O
- id: tumor_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: matched_normal_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- MuSE
- call
