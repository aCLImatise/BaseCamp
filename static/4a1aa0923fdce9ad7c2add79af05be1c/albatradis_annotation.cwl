class: CommandLineTool
id: albatradis_annotation.cwl
inputs:
- id: in_feature_size
  doc: 'Feature size (default: 198)'
  type: long?
  inputBinding:
    prefix: --feature_size
- id: in_output_file
  doc: 'Output file (default: output.embl)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_verbose
  doc: "Print out more information about the analysis while it\nruns (default: False)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_embl_file
  doc: Annotation file in EMBL format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output file (default: output.embl)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- albatradis-annotation
