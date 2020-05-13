version 1.0

task GenieVcfVenn {
  input {
    String fileFilePath
    String primaryPrimary
    String svSvType
    String? flagsFlags
  }
  command <<<
    genie vcf venn \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(primaryPrimary) then ("--primary " +  '"' + primaryPrimary + '"') else ""} \
      ~{if defined(svSvType) then ("--svtype " +  '"' + svSvType + '"') else ""}
  >>>
}