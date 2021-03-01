version 1.0

task Binlinks {
  input {
    Int? output_style
    String? bin_size
  }
  command <<<
    binlinks \
      ~{if defined(output_style) then ("-output_style " +  '"' + output_style + '"') else ""} \
      ~{if defined(bin_size) then ("-bin_size " +  '"' + bin_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_style: "|1|2"
    bin_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}