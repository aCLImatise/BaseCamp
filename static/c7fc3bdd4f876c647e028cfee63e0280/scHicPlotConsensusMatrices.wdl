version 1.0

task ScHicPlotConsensusMatrices {
  input {
    String? schic_matrix_m
    File? out_filename
    Int? dpi
    Int? threads
    Array[String] chromosomes
    String? region
    String? colormap
    Int? font_size
    Boolean? no_header
    Boolean? logo_nep
    Boolean? individual_scale
    String sch_i_c
    String var_12
  }
  command <<<
    scHicPlotConsensusMatrices \
      ~{sch_i_c} \
      ~{var_12} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if (no_header) then "--no_header" else ""} \
      ~{if (logo_nep) then "--log1p" else ""} \
      ~{if (individual_scale) then "--individual_scale" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe consensus matrix created by scHicConsensusMatrices\\n(default: None)"
    out_filename: "File name to save the resulting cluster profile.\\n(default: consensus_matrices.png)"
    dpi: "The dpi of the plot. (default: 300)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    region: "Region to be plotted for each consensus matrix. Mutual\\nexclusion with the usage of --chromosomes parameter\\n(default: None)"
    colormap: "Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html (default: RdYlBu_r)"
    font_size: "Fontsize in the plot for x and y axis. (default: 10)"
    no_header: "Do not plot a header. (default: True)"
    logo_nep: "Apply log1p operation to plot the matrices. (default:\\nFalse)"
    individual_scale: "Use an individual value range for all cluster\\nconsensus matrices. If not set, the same scale is\\napplied to all. (default: True)"
    sch_i_c: ""
    var_12: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}