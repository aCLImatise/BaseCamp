class: CommandLineTool
id: mimodd_varreport.cwl
inputs:
- id: input_file
  doc: a vcf input file
  type: string
  inputBinding:
    position: 0
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: f
  doc: '|text, --oformat html|text the format of the output file (default: html)'
  type: string
  inputBinding:
    prefix: -f
- id: species
  doc: the name of the species to be assumed when generating annotations
  type: string
  inputBinding:
    prefix: --species
- id: link
  doc: file to read species-specific hyperlink formatting instructions from
  type: string
  inputBinding:
    prefix: --link
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- varreport
