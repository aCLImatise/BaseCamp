class: CommandLineTool
id: pydownsampler.cwl
inputs:
- id: in_down_coverage
  doc: The coverage you want to downsample to (Required argument)
  type: boolean?
  inputBinding:
    prefix: --downcoverage
- id: in_output
  doc: Output filename prefix (Optional)
  type: File?
  inputBinding:
    prefix: --output
- id: in_coverage
  doc: Print out average coverage for file
  type: File?
  inputBinding:
    prefix: --coverage
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_file
  doc: BAM/SAM/CRAM file to be downsampled (Required argument)
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output filename prefix (Optional)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_coverage
  doc: Print out average coverage for file
  type: File?
  outputBinding:
    glob: $(inputs.in_coverage)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pydownsampler:1.0--py_0
cwlVersion: v1.1
baseCommand:
- pydownsampler
