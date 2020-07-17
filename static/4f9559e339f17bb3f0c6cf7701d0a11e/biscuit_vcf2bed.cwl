class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biscuit_vcf2bed.cwl
inputs:
- id: extract_type_
  doc: extract type {c, cg, ch, hcg, gch, snp} [CG]
  type: string
  inputBinding:
    prefix: -t
- id: minimum_coverage
  doc: minimum coverage [3]
  type: long
  inputBinding:
    prefix: -k
- id: sample_takes
  doc: sample, (takes "FIRST", "LAST", "ALL", or specific sample names separated by
    ",")[FIRST]
  type: string
  inputBinding:
    prefix: -s
- id: show_context_reference
  doc: show context (reference base, context group {CG,CHG,CHH}, 2-base {CA,CC,CG,CT}
    and 5-base context) before beta value and coverage column
  type: boolean
  inputBinding:
    prefix: -e
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- vcf2bed
