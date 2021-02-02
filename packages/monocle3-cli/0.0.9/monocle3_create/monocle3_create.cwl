class: CommandLineTool
id: monocle3_create.cwl
inputs:
- id: in_output_object_format
  doc: 'Format of output object. [Default: cds3]'
  type: long
  inputBinding:
    prefix: --output-object-format
- id: in_introspective
  doc: Print introspective information of the output object.
  type: boolean
  inputBinding:
    prefix: --introspective
- id: in_expression_matrix
  doc: Expression matrix, genes as rows, cells as columns. Required input.  Provide
    as TSV, CSV, RDS or MTX. In the case of MTX, requires both --cell-metadata and
    --gene-annotation.
  type: string
  inputBinding:
    prefix: --expression-matrix
- id: in_cell_metadata
  doc: Per-cell annotation, optional unless expression as MTX. Row names must match
    the column names of the expression matrix. Provide as TSV, CSV or RDS.
  type: string
  inputBinding:
    prefix: --cell-metadata
- id: in_gene_annotation
  doc: Per-gene annotation, optional unless expression as MTX. Row names must match
    the row names of the expression matrix. Provide as TSV, CSV or RDS.
  type: string
  inputBinding:
    prefix: --gene-annotation
- id: in_verbose
  doc: Emit verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_object
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- monocle3
- create
