class: CommandLineTool
id: filterout_bam.cwl
inputs:
- id: c
  doc: Write output BAM compressed [uncompressed]
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: Select and discard alignment records matching FLAGS
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: Write output BAM file to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: q
  doc: Select and discard records with mapping quality less than NUM
  type: string
  inputBinding:
    prefix: -q
- id: q
  doc: '...or with original mapping quality (ZM:i) less than NUM'
  type: string
  inputBinding:
    prefix: -Q
- id: s
  doc: Select and discard records with more than NUM suboptimal hits
  type: string
  inputBinding:
    prefix: -s
- id: s
  doc: '...or with more than NUM original suboptimal hits (Z1:i)'
  type: string
  inputBinding:
    prefix: -S
- id: v
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- filterout-bam
