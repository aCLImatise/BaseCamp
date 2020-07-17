version 1.0

task GenieVcfStats {
  input {
    String? file_path
    String? flags
  }
  command <<<
    genie vcf stats \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "a VCF file (*require)"
    flags: ""
  }
}