class: CommandLineTool
id: mmapConvert.cwl
inputs:
- id: in_output_file
  doc: output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_file_do_tm_hap
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- mmapConvert
