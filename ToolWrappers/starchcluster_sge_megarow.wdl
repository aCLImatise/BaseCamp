version 1.0

task StarchclusterSgemegarow {
  command <<<
    starchcluster_sge_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}