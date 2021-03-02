class: CommandLineTool
id: ktGetLCA.cwl
inputs:
- id: in_streaming_mode_line
  doc: "Streaming mode. Each line is expected to be a whitespace-separated list\n\
    of inputs for a single lowest common ancestor computation. Taxonomy will\nbe preloaded,\
    \ allowing for faster computation after a small upfront time.\n"
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- ktGetLCA
