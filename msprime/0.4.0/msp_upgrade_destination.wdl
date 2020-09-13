version 1.0

task MspUpgradeDestination {
  input {
    String msp
    String upgrade
    String source
    String destination
  }
  command <<<
    msp upgrade destination \
      ~{msp} \
      ~{upgrade} \
      ~{source} \
      ~{destination}
  >>>
  parameter_meta {
    msp: ""
    upgrade: ""
    source: ""
    destination: ""
  }
  output {
    File out_stdout = stdout()
  }
}