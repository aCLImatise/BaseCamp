version 1.0

task Ma {
  input {
    String? r_regionstartregionendi_id
    File? format_output_pipe
  }
  command <<<
    ma \
      ~{if defined(r_regionstartregionendi_id) then ("-c " +  '"' + r_regionstartregionendi_id + '"') else ""} \
      ~{if defined(format_output_pipe) then ("-C " +  '"' + format_output_pipe + '"') else ""}
  >>>
  parameter_meta {
    r_regionstartregionendi_id: "-R <REGION_START:REGION_END>\\n-I <ID to assign to assembly sequence>"
    format_output_pipe: "format 6 output -> don't pipe this output to file!"
  }
  output {
    File out_stdout = stdout()
    File out_format_output_pipe = "${in_format_output_pipe}"
  }
}