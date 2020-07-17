class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cage.cwl
inputs:
- id: cage
  doc: '{-o <VCF_output_file>|-s <SNP_input_db>} [-v] [--] [--version] [-h] <contig>
    <start> <end> <stepsize> <beta> <cage_output_file>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cage
