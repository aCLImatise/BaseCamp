class: CommandLineTool
id: svtool_to_vcf.py.cwl
inputs:
- id: in_sample
  doc: '[--reference REFERENCE] [--sort]'
  type: string
  inputBinding:
    prefix: --sample
- id: in_input
  doc: 'SV tool output file (default: None)'
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'Output VCF to create (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: in_tool
  doc: 'Tool name (default: BreakDancer)'
  type: string
  inputBinding:
    prefix: --tool
- id: in_reference
  doc: 'Reference FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: in_sort
  doc: 'Sort the VCF records before writing (default: False)'
  type: boolean
  inputBinding:
    prefix: --sort
- id: in_index
  doc: "Tabix compress and index the output VCF (default:\nFalse)\n"
  type: boolean
  inputBinding:
    prefix: --index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input
  doc: 'SV tool output file (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_input)
cwlVersion: v1.1
baseCommand:
- svtool_to_vcf.py
