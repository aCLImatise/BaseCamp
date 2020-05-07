version 1.0

task BoltVcfStats {
  input {
    String fileFilePath
    String? genieGenie
    String? vcfVcf
    String? statsStats
    String? flagsFlags
  }
  command <<<
    bolt vcf stats \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{vcfVcf} \
      ~{statsStats} \
      ~{flagsFlags}
  >>>
}