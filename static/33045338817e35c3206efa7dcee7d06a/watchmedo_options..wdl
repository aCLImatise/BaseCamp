version 1.0

task WatchmedoOptions {
  input {
    String watch_me_do
  }
  command <<<
    watchmedo options_ \
      ~{watch_me_do}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    watch_me_do: ""
  }
  output {
    File out_stdout = stdout()
  }
}