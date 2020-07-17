version 1.0

task OStackbar.R {
  input {
    String? output_file_prefix
    String? colors_file
    String? title
    String? legend_pos
    String stack_bardot_r
    String environment_file
  }
  command <<<
    o-stackbar.R \
      ~{stack_bardot_r} \
      ~{environment_file} \
      ~{if defined(output_file_prefix) then ("--output_file_prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(colors_file) then ("--colors_file " +  '"' + colors_file + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(legend_pos) then ("--legend_pos " +  '"' + legend_pos + '"') else ""}
  >>>
  parameter_meta {
    output_file_prefix: "Output file prefix for visualization files [default \"unknown\"]"
    colors_file: "Colors file"
    title: "Title for the output figure [default '(unknown title)']"
    legend_pos: "Legend pos [default 'none']"
    stack_bardot_r: ""
    environment_file: ""
  }
}