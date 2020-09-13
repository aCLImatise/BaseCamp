version 1.0

task Ma {
  input {
    String? var_0
    Boolean? regionstartregionend
    String? i
    File? format_output_pipe
  }
  command <<<
    ma \
      ~{if defined(var_0) then ("-c " +  '"' + var_0 + '"') else ""} \
      ~{if (regionstartregionend) then "-R" else ""} \
      ~{if defined(i) then ("-I " +  '"' + i + '"') else ""} \
      ~{if defined(format_output_pipe) then ("-C " +  '"' + format_output_pipe + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    regionstartregionend: "<REGION_START:REGION_END>"
    i: ""
    format_output_pipe: "format 6 output -> don't pipe this output to file!"
  }
  output {
    File out_stdout = stdout()
    File out_format_output_pipe = "${in_format_output_pipe}"
  }
}