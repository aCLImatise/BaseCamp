version 1.0

task DifferenceFromFirstTSSScriptMordorChromWider {
  command <<<
    difference_from_first_TSS_script_mordor_chrom_wide_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}