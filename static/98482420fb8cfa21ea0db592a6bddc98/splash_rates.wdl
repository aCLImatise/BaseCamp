version 1.0

task SplashRates {
  input {
    String splash
  }
  command <<<
    splash rates \
      ~{splash}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    splash: ""
  }
  output {
    File out_stdout = stdout()
  }
}