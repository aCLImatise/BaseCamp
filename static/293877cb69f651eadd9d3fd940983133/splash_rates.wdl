version 1.0

task SplashRates {
  input {
    String splash
  }
  command <<<
    splash rates \
      ~{splash}
  >>>
  parameter_meta {
    splash: ""
  }
  output {
    File out_stdout = stdout()
  }
}