version 1.0

task Mercy {
  input {
    Boolean afAf
    Boolean acAc
    String? optsOpts
  }
  command <<<
    mercy \
      ~{optsOpts} \
      ~{true="-af" false="" afAf} \
      ~{true="-ac" false="" acAc}
  >>>
}