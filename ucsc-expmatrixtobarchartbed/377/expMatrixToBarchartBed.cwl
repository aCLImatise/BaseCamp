#!/usr/bin/env cwl-runner

baseCommand:
- expMatrixToBarchartBed
class: CommandLineTool
cwlVersion: v1.0
id: expmatrixtobarchartbed
inputs:
- doc: Two column no header, the first column is the samples which should match the
    matrix, the second is the grouping (cell type, tissue, etc)
  id: sample_file
  inputBinding:
    position: 0
  type: string
- doc: The input matrix file. The samples in the first row should exactly match the
    ones in the sampleFile. The labels (ex ENST*****) in the first column should exactly
    match the ones in the bed file.
  id: matrix_file
  inputBinding:
    position: 1
  type: string
- doc: Bed6+1 format. File that maps the column labels from the matrix to coordinates.
    Tab separated; chr, start coord, end coord, label, score, strand, gene name. The
    score column is ignored.
  id: bed_file
  inputBinding:
    position: 2
  type: string
- doc: The output file, bed 6+5 format. See the schema in kent/src/hg/lib/barChartBed.as.
  id: output_file
  inputBinding:
    position: 3
  type: string
- doc: Optional autoSql description of extra fields in the input bed.
  id: auto_sql
  inputBinding:
    prefix: --autoSql
  type: string
- doc: Optional file to define the group order, list the groups in a single column
    in the order desired. The default ordering is alphabetical.
  id: group_order_file
  inputBinding:
    prefix: --groupOrderFile
  type: string
- doc: Calculate the group values using mean rather than median.
  id: use_mean
  inputBinding:
    prefix: --useMean
  type: boolean
- doc: Show runtime messages.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
