version 1.0

task StrainestSnpdist {
  input {
    String snp
    String dist
    String hist
  }
  command <<<
    strainest snpdist \
      ~{snp} \
      ~{dist} \
      ~{hist}
  >>>
  parameter_meta {
    snp: ""
    dist: ""
    hist: ""
  }
  output {
    File out_stdout = stdout()
  }
}