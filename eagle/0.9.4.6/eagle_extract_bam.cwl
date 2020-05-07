class: CommandLineTool
id: eagle_extract_bam.cwl
inputs:
- id: bam
  doc: a bam/sam/cram file
  type: string
  inputBinding:
    position: 0
- id: capture_kit
  doc: a capturekit gff or bed file
  type: string
  inputBinding:
    position: 1
- id: sample_rate
  doc: only use this fraction of regions
  type: string
  inputBinding:
    prefix: --samplerate
- id: w
  doc: directly write the stats to this eagle file
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- eagle
- extract
- bam
