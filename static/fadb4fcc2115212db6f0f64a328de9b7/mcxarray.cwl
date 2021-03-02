class: CommandLineTool
id: mcxarray.cwl
inputs:
- id: in_data
  doc: data file name
  type: File?
  inputBinding:
    prefix: -data
- id: in_imx
  doc: matrix file name
  type: File?
  inputBinding:
    prefix: -imx
- id: in_co
  doc: only output values val with |val| >= <num>
  type: long?
  inputBinding:
    prefix: -co
- id: in_write_file_fname
  doc: write to file fname
  type: File?
  inputBinding:
    prefix: -o
- id: in_text_table
  doc: write output in full text table format with tab-separated values (N-squared
    entries)
  type: boolean?
  inputBinding:
    prefix: --text-table
- id: in_write_binary
  doc: write in binary format (use with low -co and subsequent mcx q --vary-threshold)
  type: boolean?
  inputBinding:
    prefix: --write-binary
- id: in_write_tab
  doc: write labels to tab file
  type: File?
  inputBinding:
    prefix: -write-tab
- id: in_skip_r
  doc: skip this many rows
  type: long?
  inputBinding:
    prefix: -skipr
- id: in_skip_c
  doc: skip this many columns
  type: long?
  inputBinding:
    prefix: -skipc
- id: in_column_row_
  doc: column (or row, with --transpose) containing labels (default 1)
  type: long?
  inputBinding:
    prefix: -l
- id: in_pearson
  doc: compute edge weight as Pearson correlation score (default)
  type: boolean?
  inputBinding:
    prefix: --pearson
- id: in_spearman
  doc: compute edge weight as Spearman rank correlation score
  type: boolean?
  inputBinding:
    prefix: --spearman
- id: in_cosine
  doc: compute edge weight as cosine
  type: boolean?
  inputBinding:
    prefix: --cosine
- id: in_sine
  doc: compute edge weight as sine
  type: boolean?
  inputBinding:
    prefix: --sine
- id: in_slow_cosine
  doc: compute edge weight as cosine
  type: boolean?
  inputBinding:
    prefix: --slow-cosine
- id: in_slow_sine
  doc: compute edge weight as sine
  type: boolean?
  inputBinding:
    prefix: --slow-sine
- id: in_angle
  doc: compute edge weight as arc length
  type: boolean?
  inputBinding:
    prefix: --angle
- id: in_acute_angle
  doc: compute edge weight as acute arc length
  type: boolean?
  inputBinding:
    prefix: --acute-angle
- id: in_angle_norm
  doc: compute edge weight as arc length, normalised by pi
  type: boolean?
  inputBinding:
    prefix: --angle-norm
- id: in_acute_angle_norm
  doc: compute edge weight as acute arc length, normalised by pi/2
  type: boolean?
  inputBinding:
    prefix: --acute-angle-norm
- id: in_euclid
  doc: compute edge weight as Euclidean distance
  type: boolean?
  inputBinding:
    prefix: --euclid
- id: in_taxi
  doc: compute edge weight as taxi (city block) distance
  type: boolean?
  inputBinding:
    prefix: --taxi
- id: in_max
  doc: compute edge weight as max (aka L-oo or Chebyshev) distance
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_minkowski
  doc: compute edge weight as minkowski distance with power p = <val>
  type: string?
  inputBinding:
    prefix: -minkowski
- id: in_dot
  doc: compute edge weight as dot product
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_fp
  doc: '|meet|tanimoto|cosine|cover a+b, c, c/(a+b+c), c/sqrt((a+c)*(b+c)), c/(a+c)'
  type: string?
  inputBinding:
    prefix: -fp
- id: in_sparse
  doc: do not embed zero elements; ignore zero elements
  type: boolean?
  inputBinding:
    prefix: --sparse
- id: in_number_threads_use
  doc: number of threads to use
  type: long?
  inputBinding:
    prefix: -t
- id: in_number_compute_overall
  doc: number of compute jobs overall
  type: long?
  inputBinding:
    prefix: -J
- id: in_index_compute_job
  doc: index of this compute job
  type: long?
  inputBinding:
    prefix: -j
- id: in_job_info
  doc: print node ids and exit
  type: boolean?
  inputBinding:
    prefix: --job-info
- id: in_start
  doc: start index
  type: long?
  inputBinding:
    prefix: -start
- id: in_end
  doc: end index
  type: long?
  inputBinding:
    prefix: -end
- id: in_transpose_data
  doc: work with the transposed data matrix
  type: boolean?
  inputBinding:
    prefix: --transpose-data
- id: in_tf
  doc: <func(arg)[, func(arg)]*>          apply unary transformations to result matrix
    values
  type: boolean?
  inputBinding:
    prefix: -tf
- id: in_table_tf
  doc: <func(arg)[, func(arg)]*>    apply unary transformations to table values
  type: boolean?
  inputBinding:
    prefix: -table-tf
- id: in_digits
  doc: precision to use in interchange format
  type: long?
  inputBinding:
    prefix: -digits
- id: in_zero_as_na
  doc: compute correlation only where both values are not zero
  type: boolean?
  inputBinding:
    prefix: --zero-as-na
- id: in_write_data
  doc: write table matrix to file
  type: File?
  inputBinding:
    prefix: -write-data
- id: in_write_na
  doc: write na matrix to file
  type: File?
  inputBinding:
    prefix: -write-na
- id: in_normalise_primary_secondary
  doc: x {z,m}                       normalise P(rimary) or S(econdary) on z-scores
    (z) or mean (m)
  type: string?
  inputBinding:
    prefix: -n
- id: in_rank_transform
  doc: rank transform the data
  type: boolean?
  inputBinding:
    prefix: --rank-transform
- id: in_help
  doc: print this help
  type: boolean?
  inputBinding:
    prefix: --help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mcxarray
