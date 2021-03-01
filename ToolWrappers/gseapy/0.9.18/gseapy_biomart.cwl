class: CommandLineTool
id: gseapy_biomart.cwl
inputs:
- id: in_value__filter
  doc: "VALUE, --filter NAME VALUE\nWhich filter to use. Input filter name, and value.\
    \ If\nmulti-value required, separate each value by comma. If\nvalue is a txt file,\
    \ then one ID per row, exclude\nheader."
  type: File?
  inputBinding:
    prefix: -f
- id: in_attributes
  doc: "Which attribute(s) to retrieve. Separate each attr by\ncomma."
  type: string?
  inputBinding:
    prefix: --attributes
- id: in_ofile
  doc: Output file name
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_dataset
  doc: 'Which dataset to use. Default: hsapiens_gene_ensembl'
  type: string?
  inputBinding:
    prefix: --dataset
- id: in_host
  doc: "Which host to use. Select from {'www.ensembl.org',\n'asia.ensembl.org', 'useast.ensembl.org'}."
  type: string?
  inputBinding:
    prefix: --host
- id: in_mart
  doc: 'Which mart to use. Default: ENSEMBL_MART_ENSEMBL.'
  type: string?
  inputBinding:
    prefix: --mart
- id: in_verbose
  doc: "Increase output verbosity, print out progress of your\njob\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- gseapy
- biomart
