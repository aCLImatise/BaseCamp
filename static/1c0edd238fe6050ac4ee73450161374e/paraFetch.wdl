version 1.0

task ParaFetch {
  input {
    Boolean newerNewer
    Boolean progressProgress
  }
  command <<<
    paraFetch \
      ~{true="-newer" false="" newerNewer} \
      ~{true="-progress" false="" progressProgress}
  >>>
}