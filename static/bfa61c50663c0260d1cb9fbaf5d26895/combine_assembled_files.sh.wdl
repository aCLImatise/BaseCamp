version 1.0

task Combineassembledfilessh {
  command <<<
    combine_assembled_files_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}