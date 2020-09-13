version 1.0

task LynerPlot {
  input {
    File? outfile
    Directory? directory
    Boolean? with_annotation
    Float? annotation_split
    Boolean? color_scale
    String? mode
    String? mode_config
    Boolean? auto_open
  }
  command <<<
    lyner plot \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if (with_annotation) then "--with-annotation" else ""} \
      ~{if defined(annotation_split) then ("--annotation-split " +  '"' + annotation_split + '"') else ""} \
      ~{if (color_scale) then "--colorscale" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(mode_config) then ("--mode-config " +  '"' + mode_config + '"') else ""} \
      ~{if (auto_open) then "--auto-open" else ""}
  >>>
  parameter_meta {
    outfile: ""
    directory: ""
    with_annotation: ""
    annotation_split: "RANGE"
    color_scale: "[Greys|YlGnBu|Greens|YlOrRed|Bluered|RdBu|Reds|Blues|Picnic|Rainbow|Portland|Jet|Hot|Blackbody|Earth|Electric|Viridis|Cividis]"
    mode: ""
    mode_config: ""
    auto_open: ""
  }
  output {
    File out_stdout = stdout()
  }
}