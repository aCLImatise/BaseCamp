version 1.0

task SynthReadGenInputFile {
  input {
    String output_file
  }
  command <<<
    synthReadGen inputFile \
      ~{output_file}
  >>>
  parameter_meta {
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}