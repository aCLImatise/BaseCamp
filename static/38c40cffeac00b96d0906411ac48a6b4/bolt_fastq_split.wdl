version 1.0

task BoltFastqSplit {
  input {
    String fileFilePath
    String fqFq
    String fq2Fq2
    String? genieGenie
    String? fastFastQ
    String? splitSplit
    String? flagsFlags
  }
  command <<<
    bolt fastq split \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(fqFq) then ("--fq " +  '"' + fqFq + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{fastFastQ} \
      ~{splitSplit} \
      ~{flagsFlags}
  >>>
}