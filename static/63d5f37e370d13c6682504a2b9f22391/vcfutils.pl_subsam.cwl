class: CommandLineTool
id: vcfutils.pl_subsam.cwl
inputs:
- id: in_in_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_samples
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfutils.pl
- subsam
