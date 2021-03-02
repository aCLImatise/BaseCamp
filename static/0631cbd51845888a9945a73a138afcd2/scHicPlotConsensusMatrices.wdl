version 1.0

task ScHicPlotConsensusMatrices {
  input {
    String? schic_matrix_m
    File? out_filename
    Int? dpi
    Int? threads
    Array[String] chromosomes
    String? colormap
    String sch_i_c
    String var_7
  }
  command <<<
    scHicPlotConsensusMatrices \
      ~{sch_i_c} \
      ~{var_7} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe consensus matrix created by scHicConsensusMatrices\\n(default: None)"
    out_filename: "File name to save the resulting cluster profile.\\n(default: consensus_matrices.png)"
    dpi: "The dpi of the plot. (default: 300)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    colormap: "Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html (default: RdYlBu_r)"
    sch_i_c: ""
    var_7: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}