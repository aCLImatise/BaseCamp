version 1.0

task Startasap {
  input {
    String found_dot
  }
  command <<<
    start_asap \
      ~{found_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/start-asap:1.3.0--0"
  }
  parameter_meta {
    found_dot: "*-ft*, *--for-tag* STRING"
  }
  output {
    File out_stdout = stdout()
  }
}