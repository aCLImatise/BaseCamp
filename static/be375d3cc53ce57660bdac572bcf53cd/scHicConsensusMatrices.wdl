version 1.0

task ScHicConsensusMatrices {
  input {
    String? schic_matrix_scool
    File? clusters
    File? out_filename
    Int? threads
    String sch_i_c
    String var_5
  }
  command <<<
    scHicConsensusMatrices \
      ~{sch_i_c} \
      ~{var_5} \
      ~{if defined(schic_matrix_scool) then ("--matrix " +  '"' + schic_matrix_scool + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    schic_matrix_scool: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    clusters: "file, -c cluster file\\nText file which contains per matrix the associated\\ncluster. (default: None)"
    out_filename: "File name of the consensus scool matrix. (default:\\nNone)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_5: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}