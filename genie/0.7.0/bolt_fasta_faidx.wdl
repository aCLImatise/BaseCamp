version 1.0

task BoltFastaFaidx {
  input {
    String fileFilePath
    String? genieGenie
    String? fastFastA
    String? faFaIdx
    String? flagsFlags
  }
  command <<<
    bolt fasta faidx \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{fastFastA} \
      ~{faFaIdx} \
      ~{flagsFlags}
  >>>
}