version 1.0

task GenerateFreebayesRegionScriptssh {
  command <<<
    generate_freebayes_region_scripts_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}