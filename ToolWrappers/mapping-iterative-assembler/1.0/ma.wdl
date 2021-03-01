version 1.0

task Ma {
  input {
    File? format_output_pipe
  }
  command <<<
    ma \
      ~{if defined(format_output_pipe) then ("-C " +  '"' + format_output_pipe + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_output_pipe: "format 6 output -> don't pipe this output to file!"
  }
  output {
    File out_stdout = stdout()
    File out_format_output_pipe = "${in_format_output_pipe}"
  }
}