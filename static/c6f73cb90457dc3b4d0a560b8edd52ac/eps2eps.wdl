version 1.0

task Eps2eps {
  input {
    String? switchesSwitches
    String? inputInputEps
    String? outputOutputEps
  }
  command <<<
    eps2eps \
      ~{switchesSwitches} \
      ~{inputInputEps} \
      ~{outputOutputEps}
  >>>
}