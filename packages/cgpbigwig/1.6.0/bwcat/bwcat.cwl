class: CommandLineTool
id: bwcat.cwl
inputs:
- id: in_input_path
  doc: '[file]                          Path to the input bigwig file'
  type: boolean?
  inputBinding:
    prefix: --input-path
- id: in_region
  doc: '[string]                            Region or bw file to print to screen format.
    NB start should be 0 based: (contig:start-stop)'
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_include_na
  doc: Include NA regions in output
  type: boolean?
  inputBinding:
    prefix: --include-na
- id: in_output
  doc: '[file]                              File to write bw output to [default: stdout]'
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: '[file]                              File to write bw output to [default: stdout]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cgpbigwig:1.6.0--h93d22ca_0
cwlVersion: v1.1
baseCommand:
- bwcat
