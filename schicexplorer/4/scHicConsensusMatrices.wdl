version 1.0

task ScHicConsensusMatrices {
  input {
    String? schic_matrix_m
    String? clusters
    String? out_filename
    String? threads
    String sch_i_c
    String var_5
  }
  command <<<
    scHicConsensusMatrices \
      ~{sch_i_c} \
      ~{var_5} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices to investigate for QC. Needs to be in scool format (default: None)"
    clusters: "file, -c cluster file Text file which contains per matrix the associated cluster. (default: None)"
    out_filename: "File name of the consensus scool matrix. (default: None)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
    sch_i_c: ""
    var_5: ""
  }
}