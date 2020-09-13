version 1.0

task SnpSiftCaseControl {
  input {
    Boolean? chi_two
    String? name
    File? tf_am
    Boolean? v
    String? jar
    File file_dot_vcf
  }
  command <<<
    SnpSift caseControl \
      ~{file_dot_vcf} \
      ~{if (chi_two) then "-chi2" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(tf_am) then ("-tfam " +  '"' + tf_am + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    chi_two: ": Use ChiSquare approximarion instead of Fisher exact test."
    name: ": A name to be added after to 'Cases' or 'Controls' tags"
    tf_am: ": A TFAM file having case/control informations (phenotype colmun)"
    v: ""
    jar: ""
    file_dot_vcf: ": A VCF file (variants and genotype data)"
  }
  output {
    File out_stdout = stdout()
  }
}