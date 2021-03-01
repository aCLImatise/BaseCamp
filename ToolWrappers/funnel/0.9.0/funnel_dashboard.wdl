version 1.0

task FunnelDashboard {
  command <<<
    funnel dashboard
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}