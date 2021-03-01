class: CommandLineTool
id: ftp_ls.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1
cwlVersion: v1.1
baseCommand:
- ftp-ls
