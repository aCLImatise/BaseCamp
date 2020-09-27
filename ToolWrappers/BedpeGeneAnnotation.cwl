class: CommandLineTool
id: BedpeGeneAnnotation.cwl
inputs:
- id: in_in
  doc: Input BEDPE file containing the SVs.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output BEDPE file containing the annotated SVs.
  type: File
  inputBinding:
    prefix: -out
- id: in_add_simple_gene_names
  doc: "Adds an additional column containing only the list of gene names.\nDefault\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -add_simple_gene_names
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output BEDPE file containing the annotated SVs.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- BedpeGeneAnnotation
