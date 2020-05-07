class: CommandLineTool
id: readCounter.cwl
inputs:
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seg
  doc: Outputs in SEG format
  type: boolean
  inputBinding:
    prefix: --seg
- id: window
  doc: Specify the size of non-overlapping windows [1000]
  type: long
  inputBinding:
    prefix: --window
- id: quality
  doc: Specify the mapping quality value below which reads are ignored
  type: long
  inputBinding:
    prefix: --quality
- id: list
  doc: List all chromosomes in BAM reference file
  type: boolean
  inputBinding:
    prefix: --list
- id: chromosome
  doc: Specify the entries and order of sequences to analyze [ALL], the <string> should
    be a comma-delimited list (NO spaces)
  type: string
  inputBinding:
    prefix: --chromosome
- id: build
  doc: Build BAM index for file (same index format as SAMtools)
  type: boolean
  inputBinding:
    prefix: --build
outputs: []
cwlVersion: v1.1
baseCommand:
- readCounter
