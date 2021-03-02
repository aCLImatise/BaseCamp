version 1.0

task Testfilesystemsh {
  input {
    String in
    String out
    String log
    Int size
    String ways
    String interval_in_seconds
  }
  command <<<
    testfilesystem_sh \
      ~{in} \
      ~{out} \
      ~{log} \
      ~{size} \
      ~{ways} \
      ~{interval_in_seconds}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    in: ""
    out: ""
    log: ""
    size: ""
    ways: ""
    interval_in_seconds: ""
  }
  output {
    File out_stdout = stdout()
  }
}