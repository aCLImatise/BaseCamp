version 1.0

task ChiselPlotting {
  input {
    String? clone_map
    String? fig_format
    Int? sample
    Boolean? exclude_noisy
    Int? grid_size
    Int? plot_size
    Int? clus_size
    String? xmax
    String? xmin
    String? ymax
    String? ymin
    String input_file_defaultcallscallstsv
  }
  command <<<
    chisel_plotting \
      ~{input_file_defaultcallscallstsv} \
      ~{if defined(clone_map) then ("--clonemap " +  '"' + clone_map + '"') else ""} \
      ~{if defined(fig_format) then ("--figformat " +  '"' + fig_format + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (exclude_noisy) then "--excludenoisy" else ""} \
      ~{if defined(grid_size) then ("--gridsize " +  '"' + grid_size + '"') else ""} \
      ~{if defined(plot_size) then ("--plotsize " +  '"' + plot_size + '"') else ""} \
      ~{if defined(clus_size) then ("--clussize " +  '"' + clus_size + '"') else ""} \
      ~{if defined(xmax) then ("--xmax " +  '"' + xmax + '"') else ""} \
      ~{if defined(xmin) then ("--xmin " +  '"' + xmin + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(ymin) then ("--ymin " +  '"' + ymin + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chisel:0.0.5--py_0"
  }
  parameter_meta {
    clone_map: "Clone map (default: not used, the cells will be\\nclustered for plotting purposes)"
    fig_format: "Format of output figures (default: png, the only other\\noption is pdf)"
    sample: "Number of cells to sample (default: 20)"
    exclude_noisy: "Exclude noisy cells from plots (default: False)"
    grid_size: "Grid dimenstions specified as comma-separated numbers\\n(default: 12,6)"
    plot_size: "Plot dimenstions for RDR-BAF plots, specified as\\ncomma-separated numbers (default: 5,1.5)"
    clus_size: "Grid dimenstions for clustered plots, specified as\\ncomma-separated numbers (default: 5,3)"
    xmax: "Maximum x-axis value (default: None)"
    xmin: "Minimum x-axis value (default: None)"
    ymax: "Maximum x-axis value (default: None)"
    ymin: "Minimum x-axis value (default: None)"
    input_file_defaultcallscallstsv: "Input file with inferred copy numbers (default:\\ncalls/calls.tsv)"
  }
  output {
    File out_stdout = stdout()
  }
}