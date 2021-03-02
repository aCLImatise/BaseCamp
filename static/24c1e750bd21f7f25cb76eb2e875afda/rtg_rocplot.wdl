version 1.0

task RtgRocplot {
  input {
    File? curve
    File? png
    File? svg
    String? zoom
    File? cmd
    Boolean? hide_side_pane
    Int? line_width
    Int? palette
    Boolean? plain
    String? precision_sensitivity
    String? title
    String startup
    String roc
  }
  command <<<
    rtg rocplot \
      ~{startup} \
      ~{roc} \
      ~{if defined(curve) then ("--curve " +  '"' + curve + '"') else ""} \
      ~{if defined(png) then ("--png " +  '"' + png + '"') else ""} \
      ~{if defined(svg) then ("--svg " +  '"' + svg + '"') else ""} \
      ~{if defined(zoom) then ("--zoom " +  '"' + zoom + '"') else ""} \
      ~{if defined(cmd) then ("--cmd " +  '"' + cmd + '"') else ""} \
      ~{if (hide_side_pane) then "--hide-sidepane" else ""} \
      ~{if defined(line_width) then ("--line-width " +  '"' + line_width + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if (plain) then "--plain" else ""} \
      ~{if defined(precision_sensitivity) then ("--precision-sensitivity " +  '"' + precision_sensitivity + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    curve: "ROC data file with title optionally specified\\n(path[=title]). May be specified 0 or more times"
    png: "if set, output a PNG image to the given file"
    svg: "if set, output a SVG image to the given file"
    zoom: "show a zoomed view with the given coordinates,\\nsupplied in the form <xmax>,<ymax> or\\n<xmin>,<ymin>,<xmax>,<ymax>"
    cmd: "if set, print rocplot command used in previously\\nsaved image"
    hide_side_pane: "if set, hide the side pane from the GUI on"
    line_width: "sets the plot line width (Default is 2)"
    palette: "name of color palette to use. Allowed values are\\n[blind_13, blind_15, blind_8, brewer_accent,\\nbrewer_dark2, brewer_paired, brewer_pastel1,\\nbrewer_pastel2, brewer_set1, brewer_set2,\\nbrewer_set3, classic] (Default is classic)"
    plain: "if set, use a plain plot style"
    precision_sensitivity: "set, plot precision vs sensitivity rather than"
    title: "title for the plot"
    startup: "--interpolate           if set, interpolate curves at regular intervals"
    roc: "--scores                if set, show scores on the plot"
  }
  output {
    File out_stdout = stdout()
    File out_png = "${in_png}"
    File out_svg = "${in_svg}"
  }
}