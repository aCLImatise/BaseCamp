class: CommandLineTool
id: vcf2scoary.cwl
inputs:
- id: in_out
  doc: The path to the output file
  type: File?
  inputBinding:
    prefix: --out
- id: in_types
  doc: "The types of variants to include in the output. NOTE: This\nworks if TYPE=XX\
    \ can be found in the INFO column of the vcf\nfile. The special keyword ALL includes\
    \ all types. This is the\ndefault setting. Common types are snp, mnp, ins, del\
    \ and\ncomplex. Give as comma-separated list. Example: --types\nsnp,ins,del"
  type: File?
  inputBinding:
    prefix: --types
- id: in_force
  doc: Force overwriting of output file. (If it already exists)
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: The path to the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_types
  doc: "The types of variants to include in the output. NOTE: This\nworks if TYPE=XX\
    \ can be found in the INFO column of the vcf\nfile. The special keyword ALL includes\
    \ all types. This is the\ndefault setting. Common types are snp, mnp, ins, del\
    \ and\ncomplex. Give as comma-separated list. Example: --types\nsnp,ins,del"
  type: File?
  outputBinding:
    glob: $(inputs.in_types)
- id: out_force
  doc: Force overwriting of output file. (If it already exists)
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2scoary
