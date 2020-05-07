version 1.0

task GenieFastqSplit {
  input {
    String fileFilePath
    String fqFq
    String fq2Fq2
    String? flagsFlags
  }
  command <<<
    genie fastq split \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(fqFq) then ("--fq " +  '"' + fqFq + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""}
  >>>
}