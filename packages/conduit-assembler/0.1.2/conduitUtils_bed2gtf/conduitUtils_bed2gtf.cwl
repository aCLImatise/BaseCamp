class: CommandLineTool
id: conduitUtils_bed2gtf.cwl
inputs:
- id: in_stranded
  doc: "Report gtf fields with strand information\n"
  type: boolean?
  inputBinding:
    prefix: --stranded
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0
cwlVersion: v1.1
baseCommand:
- conduitUtils
- bed2gtf
