version 1.0

task ScHicNormalize {
  input {
    String? schic_matrix_scool
    File? out_filename
    Int? threads
    String? normalize
    Float? set_to_zero_threshold
    Int? value
    Int? maximum_region_to_consider
    String sch_i_c
    String var_8
  }
  command <<<
    scHicNormalize \
      ~{sch_i_c} \
      ~{var_8} \
      ~{if defined(schic_matrix_scool) then ("--matrix " +  '"' + schic_matrix_scool + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(normalize) then ("--normalize " +  '"' + normalize + '"') else ""} \
      ~{if defined(set_to_zero_threshold) then ("--setToZeroThreshold " +  '"' + set_to_zero_threshold + '"') else ""} \
      ~{if defined(value) then ("--value " +  '"' + value + '"') else ""} \
      ~{if defined(maximum_region_to_consider) then ("--maximumRegionToConsider " +  '"' + maximum_region_to_consider + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    schic_matrix_scool: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    out_filename: "File name of the normalized scool matrix. (default:\\nNone)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    normalize: "Normalize to a) all matrices to the lowest read count\\nof the given matrices, b) all to a given read coverage\\nvalue or c) to a multiplicative value (default:\\nsmallest)"
    set_to_zero_threshold: "Values smaller as this threshold are set to 0.\\n(default: 1.0)"
    value: "This value is used to either be interpreted as the\\ndesired read_count or the multiplicative value. This\\ndepends on the value for --normalize (default: 1)"
    maximum_region_to_consider: "To compute the normalization factor for the\\nnormalization mode 'smallest' and 'read_count',\\nconsider only this genomic distance around the\\ndiagonal. (default: 30000000)"
    sch_i_c: ""
    var_8: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}