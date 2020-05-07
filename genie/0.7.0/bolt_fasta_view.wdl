version 1.0

task BoltFastaView {
  input {
    String fileFilePath
    String scopeScope
    String? genieGenie
    String? fastFastA
    String? viewView
    String? flagsFlags
  }
  command <<<
    bolt fasta view \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(scopeScope) then ("--scope " +  '"' + scopeScope + '"') else ""} \
      ~{fastFastA} \
      ~{viewView} \
      ~{flagsFlags}
  >>>
}