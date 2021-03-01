version 1.0

task Cmph5toolspySummarizeInputcmph5 {
  input {
    Boolean? debug
    Boolean? profile
    Boolean? verbose
    Int c_mph_five_tools_do_tpy
  }
  command <<<
    cmph5tools_py summarize input_cmp_h5 \
      ~{c_mph_five_tools_do_tpy} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (profile) then "--profile" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: ""
    profile: ""
    verbose: ""
    c_mph_five_tools_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}