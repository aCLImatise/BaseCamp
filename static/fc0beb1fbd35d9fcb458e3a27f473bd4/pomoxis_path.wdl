version 1.0

task PomoxisPath {
  input {
    String program
  }
  command <<<
    pomoxis_path \
      ~{program}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    program: "name of program."
  }
  output {
    File out_stdout = stdout()
  }
}