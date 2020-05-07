version 1.0

task SimkaMinCoreInfo {
  input {
    Boolean inIn
  }
  command <<<
    simkaMinCore info \
      ~{true="-in" false="" inIn}
  >>>
}