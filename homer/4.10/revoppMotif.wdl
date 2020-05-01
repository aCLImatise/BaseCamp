version 1.0

task RevoppMotif.pl {
  input {
    String? motifMotifFile
  }
  command <<<
    revoppMotif.pl \
      ~{motifMotifFile}
  >>>
}