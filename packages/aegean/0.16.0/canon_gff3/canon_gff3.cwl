class: CommandLineTool
id: canon_gff3.cwl
inputs:
- id: in_infer
  doc: "for transcript features lacking an explicitly\ndeclared gene feature as a\
    \ parent, create this\nfeature on-they-fly"
  type: boolean?
  inputBinding:
    prefix: --infer
- id: in_outfile
  doc: ": STRING    name of file to which GFF3 data will be\nwritten; default is terminal\
    \ (stdout)"
  type: boolean?
  inputBinding:
    prefix: --outfile
- id: in_source
  doc: ': STRING     reset the source of each feature to the given'
  type: boolean?
  inputBinding:
    prefix: --source
- id: in_value
  doc: -v|--version            print version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aegean:0.16.0--hc2cb157_0
cwlVersion: v1.1
baseCommand:
- canon-gff3
