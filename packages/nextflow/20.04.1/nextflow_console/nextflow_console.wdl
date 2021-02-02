version 1.0

task NextflowConsole {
  input {
    File? filename
  }
  command <<<
    nextflow console \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}