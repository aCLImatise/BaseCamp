version 1.0

task UropaSummaryR {
  input {
    Boolean? final_hits
    Boolean? config
    File? file_name_output
    Boolean? all_hits
    Boolean? original_command_line
  }
  command <<<
    uropa_summary_R \
      ~{if (final_hits) then "--finalhits" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (file_name_output) then "--output" else ""} \
      ~{if (all_hits) then "--allhits" else ""} \
      ~{if (original_command_line) then "--call" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    final_hits: "file containing the final hits from UROPA."
    config: "file containing the json formatted configuration from the UROPA run."
    file_name_output: "file name of output file [summary.pdf]."
    all_hits: "file containing all hits from UROPA."
    original_command_line: "original command line call."
  }
  output {
    File out_stdout = stdout()
    File out_file_name_output = "${in_file_name_output}"
  }
}