version 1.0

task RunGenotypeBuildsh {
  command <<<
    run_genotype_build_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}