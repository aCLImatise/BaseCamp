version 1.0

task Mcxarray {
  input {
    File? data
    File? imx
    Int? co
    File? write_file_fname
    Boolean? text_table
    Boolean? write_binary
    File? write_tab
    Int? skip_r
    Int? skip_c
    Int? column_row_
    Boolean? pearson
    Boolean? spearman
    Boolean? cosine
    Boolean? sine
    Boolean? slow_cosine
    Boolean? slow_sine
    Boolean? angle
    Boolean? acute_angle
    Boolean? angle_norm
    Boolean? acute_angle_norm
    Boolean? euclid
    Boolean? taxi
    Boolean? max
    String? minkowski
    Boolean? dot
    String? fp
    Boolean? sparse
    Int? number_threads_use
    Int? number_compute_overall
    Int? index_compute_job
    Boolean? job_info
    Int? start
    Int? end
    Boolean? transpose_data
    Boolean? tf
    Boolean? table_tf
    Int? digits
    Boolean? zero_as_na
    File? write_data
    File? write_na
    String? normalise_primary_secondary
    Boolean? rank_transform
    Boolean? help
  }
  command <<<
    mcxarray \
      ~{if defined(data) then ("-data " +  '"' + data + '"') else ""} \
      ~{if defined(imx) then ("-imx " +  '"' + imx + '"') else ""} \
      ~{if defined(co) then ("-co " +  '"' + co + '"') else ""} \
      ~{if defined(write_file_fname) then ("-o " +  '"' + write_file_fname + '"') else ""} \
      ~{if (text_table) then "--text-table" else ""} \
      ~{if (write_binary) then "--write-binary" else ""} \
      ~{if defined(write_tab) then ("-write-tab " +  '"' + write_tab + '"') else ""} \
      ~{if defined(skip_r) then ("-skipr " +  '"' + skip_r + '"') else ""} \
      ~{if defined(skip_c) then ("-skipc " +  '"' + skip_c + '"') else ""} \
      ~{if defined(column_row_) then ("-l " +  '"' + column_row_ + '"') else ""} \
      ~{if (pearson) then "--pearson" else ""} \
      ~{if (spearman) then "--spearman" else ""} \
      ~{if (cosine) then "--cosine" else ""} \
      ~{if (sine) then "--sine" else ""} \
      ~{if (slow_cosine) then "--slow-cosine" else ""} \
      ~{if (slow_sine) then "--slow-sine" else ""} \
      ~{if (angle) then "--angle" else ""} \
      ~{if (acute_angle) then "--acute-angle" else ""} \
      ~{if (angle_norm) then "--angle-norm" else ""} \
      ~{if (acute_angle_norm) then "--acute-angle-norm" else ""} \
      ~{if (euclid) then "--euclid" else ""} \
      ~{if (taxi) then "--taxi" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if defined(minkowski) then ("-minkowski " +  '"' + minkowski + '"') else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if defined(fp) then ("-fp " +  '"' + fp + '"') else ""} \
      ~{if (sparse) then "--sparse" else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if defined(number_compute_overall) then ("-J " +  '"' + number_compute_overall + '"') else ""} \
      ~{if defined(index_compute_job) then ("-j " +  '"' + index_compute_job + '"') else ""} \
      ~{if (job_info) then "--job-info" else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("-end " +  '"' + end + '"') else ""} \
      ~{if (transpose_data) then "--transpose-data" else ""} \
      ~{if (tf) then "-tf" else ""} \
      ~{if (table_tf) then "-table-tf" else ""} \
      ~{if defined(digits) then ("-digits " +  '"' + digits + '"') else ""} \
      ~{if (zero_as_na) then "--zero-as-na" else ""} \
      ~{if defined(write_data) then ("-write-data " +  '"' + write_data + '"') else ""} \
      ~{if defined(write_na) then ("-write-na " +  '"' + write_na + '"') else ""} \
      ~{if defined(normalise_primary_secondary) then ("-n " +  '"' + normalise_primary_secondary + '"') else ""} \
      ~{if (rank_transform) then "--rank-transform" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "data file name"
    imx: "matrix file name"
    co: "only output values val with |val| >= <num>"
    write_file_fname: "write to file fname"
    text_table: "write output in full text table format with tab-separated values (N-squared entries)"
    write_binary: "write in binary format (use with low -co and subsequent mcx q --vary-threshold)"
    write_tab: "write labels to tab file"
    skip_r: "skip this many rows"
    skip_c: "skip this many columns"
    column_row_: "column (or row, with --transpose) containing labels (default 1)"
    pearson: "compute edge weight as Pearson correlation score (default)"
    spearman: "compute edge weight as Spearman rank correlation score"
    cosine: "compute edge weight as cosine"
    sine: "compute edge weight as sine"
    slow_cosine: "compute edge weight as cosine"
    slow_sine: "compute edge weight as sine"
    angle: "compute edge weight as arc length"
    acute_angle: "compute edge weight as acute arc length"
    angle_norm: "compute edge weight as arc length, normalised by pi"
    acute_angle_norm: "compute edge weight as acute arc length, normalised by pi/2"
    euclid: "compute edge weight as Euclidean distance"
    taxi: "compute edge weight as taxi (city block) distance"
    max: "compute edge weight as max (aka L-oo or Chebyshev) distance"
    minkowski: "compute edge weight as minkowski distance with power p = <val>"
    dot: "compute edge weight as dot product"
    fp: "|meet|tanimoto|cosine|cover a+b, c, c/(a+b+c), c/sqrt((a+c)*(b+c)), c/(a+c)"
    sparse: "do not embed zero elements; ignore zero elements"
    number_threads_use: "number of threads to use"
    number_compute_overall: "number of compute jobs overall"
    index_compute_job: "index of this compute job"
    job_info: "print node ids and exit"
    start: "start index"
    end: "end index"
    transpose_data: "work with the transposed data matrix"
    tf: "<func(arg)[, func(arg)]*>          apply unary transformations to result matrix values"
    table_tf: "<func(arg)[, func(arg)]*>    apply unary transformations to table values"
    digits: "precision to use in interchange format"
    zero_as_na: "compute correlation only where both values are not zero"
    write_data: "write table matrix to file"
    write_na: "write na matrix to file"
    normalise_primary_secondary: "x {z,m}                       normalise P(rimary) or S(econdary) on z-scores (z) or mean (m)"
    rank_transform: "rank transform the data"
    help: "print this help"
  }
  output {
    File out_stdout = stdout()
  }
}