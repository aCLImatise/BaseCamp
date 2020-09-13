version 1.0

task Binlinks {
  input {
    File? link_end
    Int? output_style
    String? bin_size
  }
  command <<<
    binlinks \
      ~{if defined(link_end) then ("-link_end " +  '"' + link_end + '"') else ""} \
      ~{if defined(output_style) then ("-output_style " +  '"' + output_style + '"') else ""} \
      ~{if defined(bin_size) then ("-bin_size " +  '"' + bin_size + '"') else ""}
  >>>
  parameter_meta {
    link_end: "|1|2|3"
    output_style: "|1|2"
    bin_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}