class: CommandLineTool
id: BedpeGeneAnnotation.cwl
inputs:
- id: in
  doc: Input BEDPE file containing the SVs.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output BEDPE file containing the annotated SVs.
  type: File
  inputBinding:
    prefix: -out
- id: add_simple_gene_names
  doc: "Adds an additional column containing only the list of gene names. Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -add_simple_gene_names
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- BedpeGeneAnnotation
