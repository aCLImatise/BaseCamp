version 1.0

task ParaSync {
  input {
    Boolean aA
    Boolean newerNewer
    Boolean progressProgress
  }
  command <<<
    paraSync \
      ~{true="-A" false="" aA} \
      ~{true="-newer" false="" newerNewer} \
      ~{true="-progress" false="" progressProgress}
  >>>
}