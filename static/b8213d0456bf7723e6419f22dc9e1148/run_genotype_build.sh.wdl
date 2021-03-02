version 1.0

task RunGenotypeBuildsh {
  command <<<
    run_genotype_build_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}