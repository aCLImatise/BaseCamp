class: CommandLineTool
id: vcf2scoary.cwl
inputs:
- id: out
  doc: The path to the output file
  type: string
  inputBinding:
    prefix: --out
- id: types
  doc: 'The types of variants to include in the output. NOTE: This works if TYPE=XX
    can be found in the INFO column of the vcf file. The special keyword ALL includes
    all types. This is the default setting. Common types are snp, mnp, ins, del and
    complex. Give as comma-separated list. Example: --types snp,ins,del'
  type: string
  inputBinding:
    prefix: --types
- id: force
  doc: Force overwriting of output file. (If it already exists)
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2scoary
