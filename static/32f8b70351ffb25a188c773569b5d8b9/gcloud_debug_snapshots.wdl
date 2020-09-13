version 1.0

task GcloudDebugSnapshots {
  input {
    Boolean? target
    String snapshots
    String create
    String delete
    String describe
    String list
    String wait
  }
  command <<<
    gcloud debug snapshots \
      ~{snapshots} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{wait} \
      ~{if (target) then "--target" else ""}
  >>>
  parameter_meta {
    target: "=(ID|DESCRIPTION_REGEXP)\\nThe debug target. It may be a target ID or name obtained from 'debug\\ntargets list', or it may be a regular expression uniquely specifying a\\ndebuggee based on its description or name. For App Engine projects, if\\nnot specified, the default target is the most recent deployment of the\\ndefault module and version."
    snapshots: "SYNOPSIS"
    create: "Create debug snapshots."
    delete: "Delete debug snapshots."
    describe: "Describe debug snapshots."
    list: "List debug snapshots."
    wait: "Wait for debug snapshots to complete."
  }
  output {
    File out_stdout = stdout()
  }
}