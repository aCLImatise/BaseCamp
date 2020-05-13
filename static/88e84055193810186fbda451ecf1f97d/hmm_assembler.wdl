version 1.0

task HmmAssembler.pl {
  input {
    String cC
    String? nameName
    Directory? directoryDirectoryOfFilesFromForge
  }
  command <<<
    hmm-assembler.pl \
      ~{nameName} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{directoryDirectoryOfFilesFromForge}
  >>>
}