version 1.0

task ScHicCreateBulkMatrix {
  input {
    String? schic_matrix_m
    File? out_filename
    Int? threads
    String sch_i_c
    String var_4
  }
  command <<<
    scHicCreateBulkMatrix \
      ~{sch_i_c} \
      ~{var_4} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to cluster.\\nNeeds to be in scool format (default: None)"
    out_filename: "File name to save the exported matrix. (default: None)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_4: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}