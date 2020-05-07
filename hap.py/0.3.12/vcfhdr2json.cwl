class: CommandLineTool
id: vcfhdr2json.cwl
inputs:
- id: input_file
  doc: The input files
  type: string
  inputBinding:
    prefix: --input-file
- id: output_file
  doc: The output file name.
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfhdr2json
