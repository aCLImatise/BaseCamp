version 1.0

task VcfFixPloidy {
  input {
    String? assumed_sex
    Boolean? fix_likelihoods
    File? ploidy
    File? samples
    String cat
    String broken_dot_vcf
  }
  command <<<
    vcf-fix-ploidy \
      ~{cat} \
      ~{broken_dot_vcf} \
      ~{if defined(assumed_sex) then ("--assumed-sex " +  '"' + assumed_sex + '"') else ""} \
      ~{true="--fix-likelihoods" false="" fix_likelihoods} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""}
  >>>
  parameter_meta {
    assumed_sex: "M or F, required if the list is not complete in -s"
    fix_likelihoods: "Add or remove het likelihoods (not the default behaviour)"
    ploidy: "Ploidy definition. The default is shown below."
    samples: "List of sample sexes (sample_name [MF])."
    cat: ""
    broken_dot_vcf: ""
  }
}