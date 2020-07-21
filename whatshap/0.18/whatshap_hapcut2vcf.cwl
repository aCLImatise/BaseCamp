class: CommandLineTool
id: ../../../whatshap_hapcut2vcf.cwl
inputs:
- id: output
  doc: Output VCF file. If omitted, use standard output.
  type: string
  inputBinding:
    prefix: --output
- id: vcf
  doc: VCF file
  type: string
  inputBinding:
    position: 0
- id: hap_cut_result
  doc: hapCUT result file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- whatshap
- hapcut2vcf
