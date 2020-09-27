version 1.0

task NextflowbakConsole {
  input {
    File? filename
  }
  command <<<
    nextflow_bak console \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}