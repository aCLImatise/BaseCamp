version 1.0

task NucleoatacVprocess {
  input {
    File? v_plot
    Int? lower
    Int? upper
    Int? flank
    Float? smooth
    File? sizes
    String? out
    String optional
    String smoothing_dot
  }
  command <<<
    nucleoatac vprocess \
      ~{optional} \
      ~{smoothing_dot} \
      ~{if defined(v_plot) then ("--vplot " +  '"' + v_plot + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v_plot: "Accepts VMat file. Default is Vplot from S. Cer."
    lower: "lower limit (inclusive) in insert size. default is 105"
    upper: "upper limit (exclusive) in insert size. default 251"
    flank: "distance on each side of dyad to include"
    smooth: "SD to use for gaussian smoothing. Use 0 for no"
    sizes: ""
    out: ""
    optional: "--sizes file          Insert distribution file"
    smoothing_dot: "--plot_extra          Make some additional plots"
  }
  output {
    File out_stdout = stdout()
  }
}