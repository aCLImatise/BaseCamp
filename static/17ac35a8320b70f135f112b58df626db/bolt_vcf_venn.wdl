version 1.0

task BoltVcfVenn {
  input {
    String fileFilePath
    String primaryPrimary
    String svSvType
    String? genieGenie
    String? vcfVcf
    String? vennVenn
    String? flagsFlags
  }
  command <<<
    bolt vcf venn \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(primaryPrimary) then ("--primary " +  '"' + primaryPrimary + '"') else ""} \
      ~{if defined(svSvType) then ("--svtype " +  '"' + svSvType + '"') else ""} \
      ~{vcfVcf} \
      ~{vennVenn} \
      ~{flagsFlags}
  >>>
}