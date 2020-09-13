version 1.0

task Vcf2sqlitepy {
  command <<<
    vcf2sqlite_py
  >>>
  output {
    File out_stdout = stdout()
  }
}