class: CommandLineTool
id: ../../../bolt_sam_tofastq.cwl
inputs:
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
- id: fq_two
  doc: Output FASTQ2 for paired-end reads (If empty, all data will be at fq)
  type: string
  inputBinding:
    prefix: --fq2
- id: required_flags
  doc: required flags (int16)
  type: string
  inputBinding:
    prefix: --requiredflags
- id: input_sam_file
  doc: Input SAM file (*require)
  type: string
  inputBinding:
    prefix: --sam
- id: genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_6
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- sam
- tofastq
