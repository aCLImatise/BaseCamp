version 1.0

task ScHicNormalize {
  input {
    String? schic_matrix_m
    String? out_filename
    String? threads
    String? set_to_zero_threshold
    String sch_i_c
    String var_5
  }
  command <<<
    scHicNormalize \
      ~{sch_i_c} \
      ~{var_5} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(set_to_zero_threshold) then ("--setToZeroThreshold " +  '"' + set_to_zero_threshold + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices to investigate for QC. Needs to be in scool format (default: None)"
    out_filename: "File name of the consensus scool matrix. (default: None)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
    set_to_zero_threshold: "Values smaller as this threshold are set to 0. (default: 1.0)"
    sch_i_c: ""
    var_5: ""
  }
}