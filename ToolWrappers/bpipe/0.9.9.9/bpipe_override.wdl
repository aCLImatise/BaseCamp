version 1.0

task BpipeOverride {
  input {
    String? comment_add_given
    String? fail_specified_check
    Boolean? list_checks_mode
    String? override_specified_check
  }
  command <<<
    bpipe override \
      ~{if defined(comment_add_given) then ("-c " +  '"' + comment_add_given + '"') else ""} \
      ~{if defined(fail_specified_check) then ("-f " +  '"' + fail_specified_check + '"') else ""} \
      ~{if (list_checks_mode) then "-l" else ""} \
      ~{if defined(override_specified_check) then ("-o " +  '"' + override_specified_check + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    comment_add_given: "comment to add to given operation"
    fail_specified_check: "fail specified check"
    list_checks_mode: "list checks and exit, non-interactive mode"
    override_specified_check: "override specified check to force it to pass"
  }
  output {
    File out_stdout = stdout()
  }
}