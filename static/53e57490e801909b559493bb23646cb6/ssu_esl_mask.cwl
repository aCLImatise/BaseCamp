class: CommandLineTool
id: ../../../ssu_esl_mask.cwl
inputs:
- id: output_masked_sequences
  doc: ': output masked sequences to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: reverse_mask_exclusive
  doc: ': reverse: mask exclusive of <start>..<end>, not inclusive'
  type: boolean
  inputBinding:
    prefix: -r
- id: random_access_fetch
  doc: ': random access: fetch seqs from ssi-indexed <sqfile>'
  type: boolean
  inputBinding:
    prefix: -R
- id: convert_masked_residues_lower
  doc: ': convert masked residues to lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: convert_masked_residues_character
  doc: ': convert masked residues to character <c>'
  type: string
  inputBinding:
    prefix: -m
- id: mask_additional_residues
  doc: ': mask additional <n> residues beyond <start>,<end>'
  type: string
  inputBinding:
    prefix: -x
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-mask
