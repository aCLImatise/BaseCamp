version 1.0

task Binlinks {
  input {
    File? link_end
    String? bin_size
  }
  command <<<
    binlinks \
      ~{if defined(link_end) then ("-link_end " +  '"' + link_end + '"') else ""} \
      ~{if defined(bin_size) then ("-bin_size " +  '"' + bin_size + '"') else ""}
  >>>
  parameter_meta {
    link_end: "|1|2|3"
    bin_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}