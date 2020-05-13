class: CommandLineTool
id: verifybamid2.cwl
inputs:
- id: bam_file
  doc: '[Empty],'
  type: boolean
  inputBinding:
    prefix: --BamFile
- id: pile_up_file
  doc: '[Empty],'
  type: boolean
  inputBinding:
    prefix: --PileupFile
- id: reference
  doc: '[Empty],'
  type: boolean
  inputBinding:
    prefix: --Reference
- id: svd_prefix
  doc: '[/tmp/tmpsdf6bm_k/share/verifybamid2-1.0.6-0/resource/1000g.100k.b38.vcf.gz.dat],'
  type: boolean
  inputBinding:
    prefix: --SVDPrefix
- id: output
  doc: '[result]'
  type: boolean
  inputBinding:
    prefix: --Output
- id: ud_path
  doc: '[Empty], --MeanPath [Empty],'
  type: boolean
  inputBinding:
    prefix: --UDPath
- id: bed_path
  doc: '[Empty]'
  type: boolean
  inputBinding:
    prefix: --BedPath
outputs: []
cwlVersion: v1.1
baseCommand:
- verifybamid2
