version 1.0

task GenieVcfVenn {
  input {
    String? file_path
    String? primary
    String? sv_type
    String? flags
  }
  command <<<
    genie vcf venn \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(primary) then ("--primary " +  '"' + primary + '"') else ""} \
      ~{if defined(sv_type) then ("--svtype " +  '"' + sv_type + '"') else ""}
  >>>
  parameter_meta {
    file_path: "VCF files (*require at 3 files)"
    primary: "a primary VCF file (*require)"
    sv_type: "SVTYPE such as DEL, DUP, INV, INS and BND (*require, support only one type)"
    flags: ""
  }
}