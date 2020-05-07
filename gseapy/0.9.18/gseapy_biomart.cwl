class: CommandLineTool
id: gseapy_biomart.cwl
inputs:
- id: f
  doc: VALUE, --filter NAME VALUE Which filter to use. Input filter name, and value.
    If multi-value required, separate each value by comma. If value is a txt file,
    then one ID per row, exclude header.
  type: string
  inputBinding:
    prefix: -f
- id: attributes
  doc: Which attribute(s) to retrieve. Separate each attr by comma.
  type: string
  inputBinding:
    prefix: --attributes
- id: ofile
  doc: Output file name
  type: string
  inputBinding:
    prefix: --ofile
- id: dataset
  doc: 'Which dataset to use. Default: hsapiens_gene_ensembl'
  type: string
  inputBinding:
    prefix: --dataset
- id: host
  doc: Which host to use. Select from {'www.ensembl.org', 'asia.ensembl.org', 'useast.ensembl.org'}.
  type: string
  inputBinding:
    prefix: --host
- id: mart
  doc: 'Which mart to use. Default: ENSEMBL_MART_ENSEMBL.'
  type: string
  inputBinding:
    prefix: --mart
- id: verbose
  doc: Increase output verbosity, print out progress of your job
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gseapy
- biomart
