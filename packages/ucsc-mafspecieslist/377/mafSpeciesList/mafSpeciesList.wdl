version 1.0

task MafSpeciesList {
  input {
    Boolean? ignore_first
  }
  command <<<
    mafSpeciesList \
      ~{if (ignore_first) then "-ignoreFirst" else ""}
  >>>
  parameter_meta {
    ignore_first: "- If true ignore first species in each maf, useful when this\\nis a mafFrags result that puts gene id there.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}