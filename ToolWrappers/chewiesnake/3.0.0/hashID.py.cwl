class: CommandLineTool
id: hashID.py.cwl
inputs:
- id: in_profile
  doc: 'Path to allele profile in tsv with first column #File'
  type: File?
  inputBinding:
    prefix: --profile
- id: in_outfile
  doc: Path to hash id output containing a hash sequence type
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_force
  doc: Force overwrite of existing result files
  type: boolean?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Path to hash id output containing a hash sequence type
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chewiesnake:3.0.0--1
cwlVersion: v1.1
baseCommand:
- hashID.py
