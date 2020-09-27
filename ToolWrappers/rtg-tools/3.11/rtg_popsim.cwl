class: CommandLineTool
id: rtg_popsim.cwl
inputs:
- id: in_output
  doc: output VCF file name
  type: File
  inputBinding:
    prefix: --output
- id: in_reference
  doc: SDF containing the reference genome
  type: string
  inputBinding:
    prefix: --reference
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: in_seed
  doc: seed for the random number generator
  type: long
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output VCF file name
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- rtg
- popsim
