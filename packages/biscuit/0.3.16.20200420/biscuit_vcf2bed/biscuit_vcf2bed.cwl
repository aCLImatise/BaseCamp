class: CommandLineTool
id: biscuit_vcf2bed.cwl
inputs:
- id: in_extract_type_
  doc: extract type {c, cg, ch, hcg, gch, snp} [CG]
  type: string
  inputBinding:
    prefix: -t
- id: in_minimum_coverage
  doc: minimum coverage [3]
  type: long
  inputBinding:
    prefix: -k
- id: in_sample_takes
  doc: sample, (takes "FIRST", "LAST", "ALL", or specific sample names separated by
    ",")[FIRST]
  type: string
  inputBinding:
    prefix: -s
- id: in_show_context_group
  doc: show context (reference base, context group {CG,CHG,CHH}, 2-base {CA,CC,CG,CT}
    and 5-base context) before beta value and coverage column
  type: boolean
  inputBinding:
    prefix: -e
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biscuit
- vcf2bed
