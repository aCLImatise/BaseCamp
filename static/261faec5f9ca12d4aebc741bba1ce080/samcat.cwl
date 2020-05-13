class: CommandLineTool
id: samcat.cwl
inputs:
- id: bam
  doc: Compressed binary BAM format
  type: string
  inputBinding:
    position: 0
- id: hex
  doc: SAM format, with flags displayed in hexadecimal
  type: string
  inputBinding:
    position: 1
- id: text
  doc: SAM format, with flags displayed as readable strings
  type: string
  inputBinding:
    position: 2
- id: ub_am
  doc: Uncompressed binary BAM format
  type: string
  inputBinding:
    position: 3
- id: b
  doc: Write output in BAM format (equivalent to -Obam)
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: Display only alignment records matching FLAGS
  type: string
  inputBinding:
    prefix: -f
- id: n
  doc: Suppress '@' headers in the output
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: Write to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: o
  doc: Write output in the specified FORMAT
  type: string
  inputBinding:
    prefix: -O
- id: v
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- samcat
