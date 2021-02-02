version 1.0

task GcloudSql {
  command <<<
    gcloud sql
  >>>
  output {
    File out_stdout = stdout()
  }
}