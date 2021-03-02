class: CommandLineTool
id: gdtools_VCF2GD.cwl
inputs:
- id: in_output
  doc: name of output Genome Diff file (DEFAULT=output.gd)
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: name of output Genome Diff file (DEFAULT=output.gd)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/breseq:0.35.5--h8b12597_0
cwlVersion: v1.1
baseCommand:
- gdtools
- VCF2GD
