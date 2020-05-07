version 1.0

task Scaffold2contig.pl {
  input {
    String? scaffoldScaffoldSeqFile
  }
  command <<<
    scaffold2contig.pl \
      ~{scaffoldScaffoldSeqFile}
  >>>
}