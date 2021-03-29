class: CommandLineTool
id: varlociraptor_decode_phred.cwl
inputs:
- id: in_var_loci_raptor
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varlociraptor:2.6.5--hd5fb649_0
cwlVersion: v1.1
baseCommand:
- varlociraptor
- decode-phred
