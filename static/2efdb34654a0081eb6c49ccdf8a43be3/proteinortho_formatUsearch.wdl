version 1.0

task ProteinorthoFormatUsearch.pl {
  input {
    String? formatFormatUpL
    File? fileFileA
  }
  command <<<
    proteinortho_formatUsearch.pl \
      ~{formatFormatUpL} \
      ~{fileFileA}
  >>>
}