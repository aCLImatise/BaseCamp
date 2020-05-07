version 1.0

task LocarnapRevcomp.pl {
  input {
    String? fastFastAFiles
  }
  command <<<
    locarnap-revcomp.pl \
      ~{fastFastAFiles}
  >>>
}