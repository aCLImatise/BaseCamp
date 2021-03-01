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
hints: []
cwlVersion: v1.1
baseCommand:
- gdtools
- VCF2GD
