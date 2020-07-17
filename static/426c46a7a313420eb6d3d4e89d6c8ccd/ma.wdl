version 1.0

task Ma {
  input {
    String? format_output_pipe
  }
  command <<<
    ma \
      ~{if defined(format_output_pipe) then ("-C " +  '"' + format_output_pipe + '"') else ""}
  >>>
  parameter_meta {
    format_output_pipe: "format 6 output -> don't pipe this output to file!"
  }
}