class: CommandLineTool
id: verifybamid2.cwl
inputs:
- id: in_svd_prefix
  doc: '[/usr/local/share/verifybamid2-1.0.6-1/resource/1000g.100k.b38.vcf.gz.dat],'
  type: boolean?
  inputBinding:
    prefix: --SVDPrefix
- id: in_output
  doc: '[result]'
  type: boolean?
  inputBinding:
    prefix: --Output
- id: in_reference
  doc: required
  type: string?
  inputBinding:
    prefix: --Reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- verifybamid2
