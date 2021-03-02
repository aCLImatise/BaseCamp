version 1.0

task Cromshell {
  input {
    Int? set_curl_connect
    Boolean? wait_workflow_transition
    Boolean? enable_prettyprinting
    Boolean? expand_subworkflow_information
    Boolean? color_output_completion
    Boolean? check_completion_status
    String? provided_only_remove
    String included_wdl_zip_file
    String jobs_dot
    String email
    String daemon_server
    String anything_but_zero
  }
  command <<<
    cromshell \
      ~{included_wdl_zip_file} \
      ~{jobs_dot} \
      ~{email} \
      ~{daemon_server} \
      ~{anything_but_zero} \
      ~{if defined(set_curl_connect) then ("-t " +  '"' + set_curl_connect + '"') else ""} \
      ~{if (wait_workflow_transition) then "-w" else ""} \
      ~{if (enable_prettyprinting) then "-p" else ""} \
      ~{if (expand_subworkflow_information) then "-x" else ""} \
      ~{if (color_output_completion) then "-c" else ""} \
      ~{if (check_completion_status) then "-u" else ""} \
      ~{if defined(provided_only_remove) then ("-s " +  '"' + provided_only_remove + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cromshell:0.4.3--0"
  }
  parameter_meta {
    set_curl_connect: "Set the curl connect timeout to TIMEOUT seconds.\\nAlso sets the curl max timeout to 2*TIMEOUT seconds.\\nTIMEOUT must be an integer."
    wait_workflow_transition: "Wait for workflow to transition from 'Submitted' to some other status\\nbefore cromshell exits"
    enable_prettyprinting: "Enable pretty-printing."
    expand_subworkflow_information: "Expand sub-workflow information."
    color_output_completion: "Color the output by completion status."
    check_completion_status: "Check completion status of all unfinished jobs."
    provided_only_remove: "If provided, will only remove jobs with the given STATUS from the local list."
    included_wdl_zip_file: "Zip file containing any WDL files included in the input WDL"
    jobs_dot: "Query workflow status:"
    email: "Email address to which to send the notification."
    daemon_server: "Server on which to run the notification daemon."
    anything_but_zero: "FAILURE/ERROR"
  }
  output {
    File out_stdout = stdout()
  }
}