version 1.0

task BoltVcfStats {
  input {
    String? file_path
    String genie
    String vcf
    String stats
    String? flags
  }
  command <<<
    bolt vcf stats \
      ~{genie} \
      ~{vcf} \
      ~{stats} \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "a VCF file (*require)"
    genie: ""
    vcf: ""
    stats: ""
    flags: ""
  }
}