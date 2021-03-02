class: CommandLineTool
id: whatshap_unphase.cwl
inputs:
- id: in_vcf
  doc: VCF file. Use "-" to read from standard input
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- whatshap
- unphase
