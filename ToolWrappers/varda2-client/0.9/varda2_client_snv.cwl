class: CommandLineTool
id: varda2_client_snv.cwl
inputs:
- id: in_position
  doc: Locus position
  type: string?
  inputBinding:
    prefix: --position
- id: in_inserted
  doc: Inserted base
  type: string?
  inputBinding:
    prefix: --inserted
- id: in_reference
  doc: "Chromosome to look at\n"
  type: string?
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varda2-client:0.9--py_0
cwlVersion: v1.1
baseCommand:
- varda2-client
- snv
