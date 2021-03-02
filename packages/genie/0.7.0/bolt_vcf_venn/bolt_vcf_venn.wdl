version 1.0

task BoltVcfVenn {
  input {
    File? file_path
    File? primary
    String? sv_type
    String genie
    String vcf
    String venn
  }
  command <<<
    bolt vcf venn \
      ~{genie} \
      ~{vcf} \
      ~{venn} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(primary) then ("--primary " +  '"' + primary + '"') else ""} \
      ~{if defined(sv_type) then ("--svtype " +  '"' + sv_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "VCF files (*require at 3 files)"
    primary: "a primary VCF file (*require)"
    sv_type: "SVTYPE such as DEL, DUP, INV, INS and BND (*require, support only one type)"
    genie: ""
    vcf: ""
    venn: ""
  }
  output {
    File out_stdout = stdout()
  }
}