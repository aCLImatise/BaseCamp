class: CommandLineTool
id: cage.cwl
inputs:
- id: cage
  doc: '{-o <VCF_output_file>|-s <SNP_input_db>} [-v] [--] [--version] [-h] <contig>
    <start> <end> <stepsize> <beta> <cage_output_file>'
  type: string
  inputBinding:
    position: 0
- id: or
  doc: --
  type: boolean
  inputBinding:
    prefix: -- OR
- id: s
  doc: ',  --input_SNP_db <SNP_input_db>'
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- cage
