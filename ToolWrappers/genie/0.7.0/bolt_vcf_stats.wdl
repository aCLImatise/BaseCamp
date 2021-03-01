version 1.0

task BoltVcfStats {
  input {
    File? file_path
    String genie
    String vcf
    String stats
  }
  command <<<
    bolt vcf stats \
      ~{genie} \
      ~{vcf} \
      ~{stats} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "a VCF file (*require)"
    genie: ""
    vcf: ""
    stats: ""
  }
  output {
    File out_stdout = stdout()
  }
}