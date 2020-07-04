version 1.0

task SpacedToTab {
  input {
    String? sizes
    String in_dot_txt
    String out_dot_tab
  }
  command <<<
    spacedToTab \
      ~{in_dot_txt} \
      ~{out_dot_tab} \
      ~{if defined(sizes) then ("-sizes " +  '"' + sizes + '"') else ""}
  >>>
  parameter_meta {
    sizes: ",Y,Z - Force it to have columns of the given widths. The final char in each column should be space or newline"
    in_dot_txt: ""
    out_dot_tab: ""
  }
}