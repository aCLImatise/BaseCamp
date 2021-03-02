version 1.0

task ScHicNormalize {
  input {
    String? schic_matrix_scool
    File? out_filename
    Int? threads
    Float? set_to_zero_threshold
    String sch_i_c
    String var_5
  }
  command <<<
    scHicNormalize \
      ~{sch_i_c} \
      ~{var_5} \
      ~{if defined(schic_matrix_scool) then ("--matrix " +  '"' + schic_matrix_scool + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(set_to_zero_threshold) then ("--setToZeroThreshold " +  '"' + set_to_zero_threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    schic_matrix_scool: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    out_filename: "File name of the consensus scool matrix. (default:\\nNone)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    set_to_zero_threshold: "Values smaller as this threshold are set to 0.\\n(default: 1.0)"
    sch_i_c: ""
    var_5: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}