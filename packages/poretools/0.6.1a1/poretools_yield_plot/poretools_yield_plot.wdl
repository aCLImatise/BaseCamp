version 1.0

task PoretoolsYieldPlot {
  input {
    Boolean? quiet
    File? save_as
    Boolean? theme_bw
    Int? skip
    File? saved_f
    String? plot_type
    String files
    String type_dot
  }
  command <<<
    poretools yield_plot \
      ~{files} \
      ~{type_dot} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(save_as) then ("--saveas " +  '"' + save_as + '"') else ""} \
      ~{if (theme_bw) then "--theme-bw" else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(saved_f) then ("--savedf " +  '"' + saved_f + '"') else ""} \
      ~{if defined(plot_type) then ("--plot-type " +  '"' + plot_type + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    save_as: "Save the plot to a file. Extension (.pdf or .png) drives"
    theme_bw: "Use a black and white theme."
    skip: "Only plot every n points to reduce size"
    saved_f: "Save the data frame used to construct plot to a file."
    plot_type: ""
    files: "The input FAST5 files."
    type_dot: "--plot-type STRING  Save the wiggle plot to a file (def=reads)."
  }
  output {
    File out_stdout = stdout()
  }
}