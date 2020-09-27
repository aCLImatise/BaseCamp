version 1.0

task GenerateFreebayesRegionScriptssh {
  command <<<
    generate_freebayes_region_scripts_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}