version 1.0

task StagGrep.pl {
  input {
    String? nodeNode
    File? fileFile
  }
  command <<<
    stag-grep.pl \
      ~{nodeNode} \
      ~{fileFile}
  >>>
}