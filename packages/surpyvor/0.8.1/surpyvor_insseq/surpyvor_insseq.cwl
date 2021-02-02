class: CommandLineTool
id: ../../../surpyvor_insseq.cwl
inputs:
- id: in_verbose
  doc: Print out more information while running.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: "vcf file to write improved variants to [stdout]\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- surpyvor
- insseq
