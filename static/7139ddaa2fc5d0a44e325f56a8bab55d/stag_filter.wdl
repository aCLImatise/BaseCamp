version 1.0

task StagFilter.pl {
  input {
    String? nodeNode
    File? fileFile
  }
  command <<<
    stag-filter.pl \
      ~{nodeNode} \
      ~{fileFile}
  >>>
}