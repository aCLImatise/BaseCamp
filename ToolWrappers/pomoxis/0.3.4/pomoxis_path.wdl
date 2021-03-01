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
    docker: "None"
  }
  parameter_meta {
    program: "name of program."
  }
  output {
    File out_stdout = stdout()
  }
}