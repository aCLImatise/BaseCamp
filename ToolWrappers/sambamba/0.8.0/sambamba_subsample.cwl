class: CommandLineTool
id: sambamba_subsample.cwl
inputs:
- id: in_type
  doc: '[fasthash]   Algorithm for subsampling (fasthash, default is none)'
  type: boolean?
  inputBinding:
    prefix: --type
- id: in_max_cov
  doc: '[depth]   Maximum coverage (approx)'
  type: boolean?
  inputBinding:
    prefix: --max-cov
- id: in_output
  doc: Set output file (default stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_remove
  doc: Remove over sampled reads from output
  type: boolean?
  inputBinding:
    prefix: --remove
- id: in_logging
  doc: Set logging to debug|info|warning|critical -nyi
  type: string?
  inputBinding:
    prefix: --logging
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Set output file (default stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- subsample
