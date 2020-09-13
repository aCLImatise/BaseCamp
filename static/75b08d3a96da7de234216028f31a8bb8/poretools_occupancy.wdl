version 1.0

task PoretoolsOccupancy {
  input {
    Boolean? quiet
    File? save_as
    String? plot_type
    String files
    String type_dot
  }
  command <<<
    poretools occupancy \
      ~{files} \
      ~{type_dot} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(save_as) then ("--saveas " +  '"' + save_as + '"') else ""} \
      ~{if defined(plot_type) then ("--plot-type " +  '"' + plot_type + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    save_as: "Save the plot to a file. Extension (.pdf or .png) drives"
    plot_type: ""
    files: "The input FAST5 files."
    type_dot: "--plot-type STRING  The type of plot to generate"
  }
  output {
    File out_stdout = stdout()
  }
}