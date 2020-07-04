version 1.0

task VsnpGroupReporter.py {
  input {
    String? vcf
    String? ref_option
    Boolean? v
    String prog
  }
  command <<<
    vsnp_group_reporter.py \
      ~{prog} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ref_option) then ("--ref_option " +  '"' + ref_option + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    vcf: "Required: vcf file"
    ref_option: "Required: reference option"
    v: ""
    prog: ""
  }
}