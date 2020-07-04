version 1.0

task UropaSummary.R {
  input {
    Boolean? final_hits
    Boolean? config
    Boolean? file_name_output
    Boolean? all_hits
    Boolean? original_command_line
  }
  command <<<
    uropa_summary.R \
      ~{true="--finalhits" false="" final_hits} \
      ~{true="--config" false="" config} \
      ~{true="--output" false="" file_name_output} \
      ~{true="--allhits" false="" all_hits} \
      ~{true="--call" false="" original_command_line}
  >>>
  parameter_meta {
    final_hits: "file containing the final hits from UROPA."
    config: "file containing the json formatted configuration from the UROPA run."
    file_name_output: "file name of output file [summary.pdf]."
    all_hits: "file containing all hits from UROPA."
    original_command_line: "original command line call."
  }
}