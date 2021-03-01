version 1.0

task Fancplot {
  input {
    File? plot
    File? suppresses_interactive_window
    File? script
    String? name
    Int? width
    Int? window_size
    Boolean? invert_x
    Array[String] tick_locations
    String regions
  }
  command <<<
    fancplot \
      ~{regions} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""} \
      ~{if defined(suppresses_interactive_window) then ("--output " +  '"' + suppresses_interactive_window + '"') else ""} \
      ~{if defined(script) then ("--script " +  '"' + script + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if (invert_x) then "--invert-x" else ""} \
      ~{if defined(tick_locations) then ("--tick-locations " +  '"' + tick_locations + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fanc:0.9.0--py37hf01694f_0"
  }
  parameter_meta {
    plot: "New plot, type will be chosen automatically by file\\ntype, unless \\\"-t\\\" is provided."
    suppresses_interactive_window: "Suppresses interactive plotting window and redirects\\nplot to file. Specify path to file when plotting a\\nsingle region, and path to a folder for plotting\\nmultiple regions."
    script: "Use a script file to define plot."
    name: "Plot name to be used as prefix when plotting multiple\\nregions. Is ignored for single region and interactive\\nplot."
    width: "Width of the figure in inches. Default: 4"
    window_size: "Plotting region size in base pairs. If provided, the\\nactual size of the given region is ignored and instead\\na region <chromosome>:<region center - window size/2>\\n- <region center + window size/2> will be plotted."
    invert_x: "Invert x-axis for this plot"
    tick_locations: "Manually define the locations of the tick labels on\\nthe genome axis."
    regions: "List of region selectors (<chr>:<start>-<end>) or\\nfiles with region information (BED, GTF, ...)."
  }
  output {
    File out_stdout = stdout()
  }
}