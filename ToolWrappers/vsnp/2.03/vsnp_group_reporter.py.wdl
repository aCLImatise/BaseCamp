version 1.0

task VsnpGroupReporterpy {
  input {
    File? vcf
    String? ref_option
    Boolean? v
    String prog
  }
  command <<<
    vsnp_group_reporter_py \
      ~{prog} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ref_option) then ("--ref_option " +  '"' + ref_option + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf: "Required: vcf file"
    ref_option: "Required: reference option"
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}