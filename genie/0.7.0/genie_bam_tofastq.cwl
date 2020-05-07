class: CommandLineTool
id: genie_bam_tofastq.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam
  doc: Input BAM file (*require)
  type: string
  inputBinding:
    prefix: --bam
- id: excluded_flags
  doc: excluded flags (int16)
  type: string
  inputBinding:
    prefix: --excludedflags
- id: fq
  doc: Output FASTQ file (fq1 for paired-end reads) (*require)
  type: string
  inputBinding:
    prefix: --fq
- id: fq2
  doc: Output FASTQ2 for paired-end reads (If empty, all data will be at fq)
  type: string
  inputBinding:
    prefix: --fq2
- id: required_flags
  doc: required flags (int16)
  type: string
  inputBinding:
    prefix: --requiredflags
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- bam
- tofastq
