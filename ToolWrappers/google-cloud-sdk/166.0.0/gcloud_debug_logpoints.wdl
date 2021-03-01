version 1.0

task GcloudDebugLogpoints {
  input {
    Boolean? target
    String log_points
    String create
    String delete
    String list
    String id
    Int five_six_seven_eight_nine_zero_abcdef_one_one_two_three_four_five_six_seven_eight_nine
  }
  command <<<
    gcloud debug logpoints \
      ~{log_points} \
      ~{create} \
      ~{delete} \
      ~{list} \
      ~{id} \
      ~{five_six_seven_eight_nine_zero_abcdef_one_one_two_three_four_five_six_seven_eight_nine} \
      ~{if (target) then "--target" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target: "=(ID|DESCRIPTION_REGEXP)\\nThe debug target. It may be a target ID or name obtained from 'debug\\ntargets list', or it may be a regular expression uniquely specifying a\\ndebuggee based on its description or name. For App Engine projects, if\\nnot specified, the default target is the most recent deployment of the\\ndefault module and version."
    log_points: "SYNOPSIS"
    create: "Create debug logpoints."
    delete: "Delete debug logpoints."
    list: "List debug logpoints."
    id: "LOCATION    ..."
    five_six_seven_eight_nine_zero_abcdef_one_one_two_three_four_five_six_seven_eight_nine: "product.py:123  ..."
  }
  output {
    File out_stdout = stdout()
  }
}