version 1.0

task ConstaxNoInputssh {
  command <<<
    constax_no_inputs_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/constax:2.0.9--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}