class: CommandLineTool
id: expMatrixToBarchartBed.cwl
inputs:
- id: sample_file
  doc: Two column no header, the first column is the samples which should match the
    matrix, the second is the grouping (cell type, tissue, etc)
  type: string
  inputBinding:
    position: 0
- id: matrix_file
  doc: The input matrix file. The samples in the first row should exactly match the
    ones in the sampleFile. The labels (ex ENST*****) in the first column should exactly
    match the ones in the bed file.
  type: string
  inputBinding:
    position: 1
- id: bed_file
  doc: Bed6+1 format. File that maps the column labels from the matrix to coordinates.
    Tab separated; chr, start coord, end coord, label, score, strand, gene name. The
    score column is ignored.
  type: string
  inputBinding:
    position: 2
- id: output_file
  doc: The output file, bed 6+5 format. See the schema in kent/src/hg/lib/barChartBed.as.
  type: string
  inputBinding:
    position: 3
- id: auto_sql
  doc: Optional autoSql description of extra fields in the input bed.
  type: string
  inputBinding:
    prefix: --autoSql
- id: group_order_file
  doc: Optional file to define the group order, list the groups in a single column
    in the order desired. The default ordering is alphabetical.
  type: string
  inputBinding:
    prefix: --groupOrderFile
- id: use_mean
  doc: Calculate the group values using mean rather than median.
  type: boolean
  inputBinding:
    prefix: --useMean
- id: verbose
  doc: Show runtime messages.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- expMatrixToBarchartBed
