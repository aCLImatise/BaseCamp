class: CommandLineTool
id: gdtools_MUTATIONS.cwl
inputs:
- id: in_output
  doc: Path to output GD file with mutations predicted from evidence. (DEFAULT=output.gd)
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File?
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output GD file with mutations predicted from evidence. (DEFAULT=output.gd)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/breseq:0.35.5--h8b12597_0
cwlVersion: v1.1
baseCommand:
- gdtools
- MUTATIONS
