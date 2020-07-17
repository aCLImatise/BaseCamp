version 1.0

task Cromshell {
  input {
    String? set_curl_connect
    Boolean? wait_workflow_transition
    Boolean? enable_prettyprinting
    Boolean? expand_subworkflow_information
    Boolean? color_output_completion
    Boolean? check_completion_status
    String? provided_will_only
    String included_wdl_zip_file
    String email
    String daemon_server
    String success
    String anything_but_zero
  }
  command <<<
    cromshell \
      ~{included_wdl_zip_file} \
      ~{email} \
      ~{daemon_server} \
      ~{success} \
      ~{anything_but_zero} \
      ~{if defined(set_curl_connect) then ("-t " +  '"' + set_curl_connect + '"') else ""} \
      ~{true="-w" false="" wait_workflow_transition} \
      ~{true="-p" false="" enable_prettyprinting} \
      ~{true="-x" false="" expand_subworkflow_information} \
      ~{true="-c" false="" color_output_completion} \
      ~{true="-u" false="" check_completion_status} \
      ~{if defined(provided_will_only) then ("-s " +  '"' + provided_will_only + '"') else ""}
  >>>
  parameter_meta {
    set_curl_connect: "Set the curl connect timeout to TIMEOUT seconds. Also sets the curl max timeout to 2*TIMEOUT seconds. TIMEOUT must be an integer."
    wait_workflow_transition: "Wait for workflow to transition from 'Submitted' to some other status before cromshell exits"
    enable_prettyprinting: "Enable pretty-printing."
    expand_subworkflow_information: "Expand sub-workflow information."
    color_output_completion: "Color the output by completion status."
    check_completion_status: "Check completion status of all unfinished jobs."
    provided_will_only: "If provided, will only remove jobs with the given STATUS from the local list."
    included_wdl_zip_file: "Zip file containing any WDL files included in the input WDL"
    email: "Email address to which to send the notification."
    daemon_server: "Server on which to run the notification daemon."
    success: "SUCCESS"
    anything_but_zero: "FAILURE/ERROR"
  }
}