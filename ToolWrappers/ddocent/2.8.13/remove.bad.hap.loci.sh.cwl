class: CommandLineTool
id: remove.bad.hap.loci.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ddocent:2.8.13--0
cwlVersion: v1.1
baseCommand:
- remove.bad.hap.loci.sh
