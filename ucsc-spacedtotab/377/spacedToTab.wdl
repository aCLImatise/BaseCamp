version 1.0

task SpacedToTab {
  input {
    String? sizes
  }
  command <<<
    spacedToTab \
      ~{if defined(sizes) then ("-sizes " +  '"' + sizes + '"') else ""}
  >>>
  parameter_meta {
    sizes: ",Y,Z - Force it to have columns of the given widths.\\nThe final char in each column should be space or newline\\n"
  }
  output {
    File out_stdout = stdout()
  }
}