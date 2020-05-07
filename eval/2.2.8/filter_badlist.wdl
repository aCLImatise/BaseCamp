version 1.0

task FilterBadlist.pl {
  input {
    Boolean fF
    Boolean lL
  }
  command <<<
    filter_badlist.pl \
      ~{true="-f" false="" fF} \
      ~{true="-l" false="" lL}
  >>>
}