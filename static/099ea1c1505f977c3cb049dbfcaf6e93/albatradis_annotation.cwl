class: CommandLineTool
id: albatradis_annotation.cwl
inputs:
- id: embl_file
  doc: Annotation file in EMBL format
  type: string
  inputBinding:
    position: 0
- id: feature_size
  doc: 'Feature size (default: 198)'
  type: string
  inputBinding:
    prefix: --feature_size
- id: output_file
  doc: 'Output file (default: output.embl)'
  type: string
  inputBinding:
    prefix: --outputfile
- id: verbose
  doc: 'Print out more information about the analysis while it runs (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- albatradis-annotation
