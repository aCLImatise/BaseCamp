version 1.0

task NucleoatacVprocess {
  input {
    File? sizes
    String? v_plot
    Int? lower
    Int? upper
    Int? flank
    Float? smooth
    Boolean? plot_extra
    String? out
  }
  command <<<
    nucleoatac vprocess \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(v_plot) then ("--vplot " +  '"' + v_plot + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{true="--plot_extra" false="" plot_extra} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    sizes: "Insert distribution file"
    v_plot: "Accepts VMat file. Default is Vplot from S. Cer."
    lower: "lower limit (inclusive) in insert size. default is 105"
    upper: "upper limit (exclusive) in insert size. default 251"
    flank: "distance on each side of dyad to include"
    smooth: "SD to use for gaussian smoothing. Use 0 for no smoothing."
    plot_extra: "Make some additional plots"
    out: ""
  }
}