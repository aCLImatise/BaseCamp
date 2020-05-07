version 1.0

task StagHandle.pl {
  input {
    Boolean subSub
    Boolean trapTrap
  }
  command <<<
    stag-handle.pl \
      ~{true="-sub" false="" subSub} \
      ~{true="-trap" false="" trapTrap}
  >>>
}