version 1.0

task GenieFastaView {
  input {
    String fileFilePath
    String scopeScope
    String? flagsFlags
  }
  command <<<
    genie fasta view \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(scopeScope) then ("--scope " +  '"' + scopeScope + '"') else ""}
  >>>
}