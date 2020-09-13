class: CommandLineTool
id: ../../../esl_mask.cwl
inputs:
- id: in_output_masked_sequences
  doc: ': output masked sequences to file <f> instead of stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_reverse_mask_exclusive
  doc: ': reverse: mask exclusive of <start>..<end>, not inclusive'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_random_access_fetch
  doc: ': random access: fetch seqs from ssi-indexed <sqfile>'
  type: boolean
  inputBinding:
    prefix: -R
- id: in_convert_masked_residues_lower
  doc: ': convert masked residues to lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_convert_masked_residues_character
  doc: ': convert masked residues to character <c>'
  type: string
  inputBinding:
    prefix: -m
- id: in_mask_additional_n
  doc: ': mask additional <n> residues beyond <start>,<end>'
  type: string
  inputBinding:
    prefix: -x
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_masked_sequences
  doc: ': output masked sequences to file <f> instead of stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output_masked_sequences)
cwlVersion: v1.1
baseCommand:
- esl-mask
