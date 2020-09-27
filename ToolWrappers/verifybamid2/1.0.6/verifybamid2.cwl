class: CommandLineTool
id: verifybamid2.cwl
inputs:
- id: in_bam_file
  doc: '[Empty],'
  type: boolean
  inputBinding:
    prefix: --BamFile
- id: in_pile_up_file
  doc: '[Empty],'
  type: boolean
  inputBinding:
    prefix: --PileupFile
- id: in_reference
  doc: '[Empty],'
  type: boolean
  inputBinding:
    prefix: --Reference
- id: in_svd_prefix
  doc: '[/usr/local/share/verifybamid2-1.0.6-1/resource/1000g.100k.b38.vcf.gz.dat],'
  type: boolean
  inputBinding:
    prefix: --SVDPrefix
- id: in_output
  doc: '[result]'
  type: boolean
  inputBinding:
    prefix: --Output
- id: in_ud_path
  doc: '[Empty], --MeanPath [Empty],'
  type: boolean
  inputBinding:
    prefix: --UDPath
- id: in_bed_path
  doc: '[Empty]'
  type: boolean
  inputBinding:
    prefix: --BedPath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- verifybamid2
