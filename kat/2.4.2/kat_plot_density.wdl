version 1.0

task KatPlotDensity {
  input {
    Boolean? not_raster_is_ed
    String? dpi
    Boolean? verbose
    String? o
    String? p
    String? t
    String matrix_file
  }
  command <<<
    kat_plot_density \
      ~{matrix_file} \
      ~{true="--not_rasterised" false="" not_raster_is_ed} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    not_raster_is_ed: "Don't rasterise graphics (slower)."
    dpi: "Resolution in dots per inch of output graphic."
    verbose: "Print extra information"
    o: ""
    p: ""
    t: ""
    matrix_file: "The input matrix file from KAT"
  }
}