class: CommandLineTool
id: nanoq.cwl
inputs:
- id: in_crab
  doc: Rust-Bio parser (fastq only) [false]
  type: boolean?
  inputBinding:
    prefix: --crab
- id: in_detail
  doc: Print detailed read summary [false]
  type: boolean?
  inputBinding:
    prefix: --detail
- id: in_keep_bases
  doc: Keep reads with best quality bases [0]
  type: long?
  inputBinding:
    prefix: --keep_bases
- id: in_fast_x
  doc: Fastx input file [-]
  type: File?
  inputBinding:
    prefix: --fastx
- id: in_max_length
  doc: Maximum sequence length [0]
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_min_length
  doc: Minimum sequence length [0]
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_output
  doc: Fastx output file [-]
  type: File?
  inputBinding:
    prefix: --output
- id: in_keep_percent
  doc: Keep best percent quality bases [0]
  type: long?
  inputBinding:
    prefix: --keep_percent
- id: in_min_quality
  doc: Minimum average sequence quality [0]
  type: long?
  inputBinding:
    prefix: --min_quality
- id: in_top
  doc: Print <top> length + quality reads [5]
  type: long?
  inputBinding:
    prefix: --top
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Fastx output file [-]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nanoq:0.2.1--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- nanoq
