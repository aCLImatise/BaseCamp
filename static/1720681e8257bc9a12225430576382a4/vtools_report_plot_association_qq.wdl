version 1.0

task VtoolsReportPlotAssociationQq {
  input {
    Int? shape
    Boolean? fixed_shape
    Boolean? no_slope
    String? title
    String? color
    String? width_height
    Boolean? same_page
    File? specify_output_graph
    Boolean? bonferroni
    Array[String] h_lines
    Int? label_top
    Array[String] label_these
    Int? font_size
  }
  command <<<
    vtools_report plot_association qq \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if (fixed_shape) then "--fixed_shape" else ""} \
      ~{if (no_slope) then "--no_slope" else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(width_height) then ("--width_height " +  '"' + width_height + '"') else ""} \
      ~{if (same_page) then "--same_page" else ""} \
      ~{if defined(specify_output_graph) then ("--output " +  '"' + specify_output_graph + '"') else ""} \
      ~{if (bonferroni) then "--bonferroni" else ""} \
      ~{if defined(h_lines) then ("--hlines " +  '"' + h_lines + '"') else ""} \
      ~{if defined(label_top) then ("--label_top " +  '"' + label_top + '"') else ""} \
      ~{if defined(label_these) then ("--label_these " +  '"' + label_these + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    shape: "Choose a shape theme (integer 1 to 16) for dots on QQ\\nplot. Default set to 1."
    fixed_shape: "Use the same dot-shape theme for all plots"
    no_slope: "Do not plot the diagonal line"
    title: "Title of plot."
    color: "Choose a color theme from the list above to apply to\\nthe plot. (via the 'RColorBrewer' package:\\ncran.r-project.org/web/packages/RColorBrewer)"
    width_height: "INCHES, --width-height INCHES INCHES\\nThe width and height of the graphics region in inches"
    same_page: "Plot multiple groups of p-values on the same graph"
    specify_output_graph: "Specify output graph filename. Output is in pdf\\nformat. It can be converted to jpg format via the\\n'convert' command in Linux (e.g., convert -density 180\\np.pdf p.jpg)"
    bonferroni: "Plot the horizontal line at 0.05/N on Y-axis\\n(significance level after Bonferroni correction)"
    h_lines: "Additional horizontal line(s) to be drawn on the\\nY-axis."
    label_top: "Specify how many top hits (smallest p-values by rank)\\nyou want to highlight with their identifiers in text."
    label_these: "Specify the names of variants (chr:pos, e.g., 1:87463)\\nor genes (genename, e.g., IKBKB) you want to highlight\\nwith their identifiers in text."
    font_size: "Font size of text labels. Default set to '2.5'.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_graph = "${in_specify_output_graph}"
  }
}