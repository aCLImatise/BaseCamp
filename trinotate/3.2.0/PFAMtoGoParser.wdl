version 1.0

task PFAMtoGoParser.pl {
  input {
    String? pfamPfamToGo
  }
  command <<<
    PFAMtoGoParser.pl \
      ~{pfamPfamToGo}
  >>>
}