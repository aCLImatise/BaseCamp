class: CommandLineTool
id: MuSE_call.cwl
inputs:
- id: tumor_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: matched_normal_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: f
  doc: faidx indexed reference sequence file
  type: File
  inputBinding:
    prefix: -f
- id: r
  doc: single region (chr:pos-pos) where somatic mutations are called
  type: string
  inputBinding:
    prefix: -r
- id: l
  doc: list of regions (chr:pos-pos or BED), one region per line
  type: File
  inputBinding:
    prefix: -l
- id: o
  doc: output file name (suffix '.MuSE.txt' is automatically added)
  type: string
  inputBinding:
    prefix: -O
outputs: []
cwlVersion: v1.1
baseCommand:
- MuSE
- call
