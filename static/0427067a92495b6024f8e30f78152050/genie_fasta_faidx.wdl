version 1.0

task GenieFastaFaidx {
  input {
    String fileFilePath
    String? flagsFlags
  }
  command <<<
    genie fasta faidx \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""}
  >>>
}