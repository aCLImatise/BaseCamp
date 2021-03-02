class: CommandLineTool
id: kaiju_mkfmi.cwl
inputs:
- id: in_remove_cmd
  doc: "(string)\nCommand for deleting .bwt and .sa files (e.g. rm)\nValue:  NULL\
    \ (null)"
  type: boolean?
  inputBinding:
    prefix: -removecmd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kaiju:1.7.4--h8b12597_0
cwlVersion: v1.1
baseCommand:
- kaiju-mkfmi
