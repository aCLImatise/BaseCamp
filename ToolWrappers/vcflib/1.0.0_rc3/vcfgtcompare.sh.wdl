version 1.0

task Vcfgtcomparesh {
  command <<<
    vcfgtcompare_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}