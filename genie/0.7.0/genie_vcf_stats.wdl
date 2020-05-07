version 1.0

task GenieVcfStats {
  input {
    String fileFilePath
    String? flagsFlags
  }
  command <<<
    genie vcf stats \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""}
  >>>
}