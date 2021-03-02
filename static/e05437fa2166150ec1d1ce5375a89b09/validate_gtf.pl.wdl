version 1.0

task ValidateGtfpl {
  input {
    File? output_transcript_file
    Boolean? create_gtf_file
    Int? sets_maximum_number
    Boolean? output_list_inframe
    Boolean? suppress_warnings_missing
    Boolean? suppress_warnings_bad
    Boolean? output_list_
    Boolean? output_list_training
    Boolean? output_list_evaluation
    Boolean? more_options
    Boolean? options
  }
  command <<<
    validate_gtf_pl \
      ~{if defined(output_transcript_file) then ("-t " +  '"' + output_transcript_file + '"') else ""} \
      ~{if (create_gtf_file) then "-f" else ""} \
      ~{if defined(sets_maximum_number) then ("-e " +  '"' + sets_maximum_number + '"') else ""} \
      ~{if (output_list_inframe) then "-s" else ""} \
      ~{if (suppress_warnings_missing) then "-c" else ""} \
      ~{if (suppress_warnings_bad) then "-p" else ""} \
      ~{if (output_list_) then "-k" else ""} \
      ~{if (output_list_training) then "-l" else ""} \
      ~{if (output_list_evaluation) then "-m" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_transcript_file: ": output transcript file"
    create_gtf_file: ": create a fixed gtf file (This may not be possible.\\nAlways check the \\\"fixed\\\" file)"
    sets_maximum_number: ": sets the maximum number of detailed error messages to return per\\nerror to <count> (default is 5)."
    output_list_inframe: ": output list of inframe stop genes."
    suppress_warnings_missing: ": suppress warnings about missing start/stop"
    suppress_warnings_bad: ": suppress warnings about bad splice site sequence"
    output_list_: ": output a list of bad genes for \\\"super-clean\\\" training set"
    output_list_training: ": output a list of bad genes for training applications"
    output_list_evaluation: ": output a list of bad genes for evaluation purposes"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_transcript_file = "${in_output_transcript_file}"
  }
}