version 1.0

task VsnpGroupReporter.py {
  input {
    String vcfVcf
    String rR
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_group_reporter.py \
      ~{progProg} \
      ~{if defined(vcfVcf) then ("-vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}