version 1.0

task BpipeJobs {
  input {
    Boolean? all
    String? sleep
    Boolean? watch
    String options
  }
  command <<<
    bpipe jobs \
      ~{options} \
      ~{if (all) then "-all" else ""} \
      ~{if defined(sleep) then ("-sleep " +  '"' + sleep + '"') else ""} \
      ~{if (watch) then "-watch" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "Show completed  as well as running jobs"
    sleep: "Sleep time when watching continuously"
    watch: "Show continuously updated display"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}