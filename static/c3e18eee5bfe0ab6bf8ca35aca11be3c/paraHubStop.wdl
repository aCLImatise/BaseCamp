version 1.0

task ParaHubStop {
  input {
    String? nowNow
  }
  command <<<
    paraHubStop \
      ~{nowNow}
  >>>
}