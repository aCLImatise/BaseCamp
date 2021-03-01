version 1.0

task ScHicConsensusMatrices {
  input {
    String? schic_matrix_scool
    File? clusters
    File? out_filename
    Boolean? no_normalization
    Int? threads
    String sch_i_c
    String var_6
  }
  command <<<
    scHicConsensusMatrices \
      ~{sch_i_c} \
      ~{var_6} \
      ~{if defined(schic_matrix_scool) then ("--matrix " +  '"' + schic_matrix_scool + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if (no_normalization) then "--no_normalization" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    schic_matrix_scool: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    clusters: "file, -c cluster file\\nText file which contains per matrix the associated\\ncluster. (default: None)"
    out_filename: "File name of the consensus scool matrix. (default:\\nNone)"
    no_normalization: "Do not plot a header. (default: True)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_6: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}