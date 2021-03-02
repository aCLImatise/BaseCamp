class: CommandLineTool
id: bolt_sam_tofastq.cwl
inputs:
- id: in_excluded_flags
  doc: excluded flags (int16)
  type: long?
  inputBinding:
    prefix: --excludedflags
- id: in_fq
  doc: Output FASTQ file (fq1 for paired-end reads) (*require)
  type: File?
  inputBinding:
    prefix: --fq
- id: in_fq_two
  doc: Output FASTQ2 for paired-end reads (If empty, all data will be at fq)
  type: long?
  inputBinding:
    prefix: --fq2
- id: in_required_flags
  doc: required flags (int16)
  type: long?
  inputBinding:
    prefix: --requiredflags
- id: in_input_sam_file
  doc: Input SAM file (*require)
  type: File?
  inputBinding:
    prefix: --sam
- id: in_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fq
  doc: Output FASTQ file (fq1 for paired-end reads) (*require)
  type: File?
  outputBinding:
    glob: $(inputs.in_fq)
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- sam
- tofastq
