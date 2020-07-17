version 1.0

task Harvesttools {
  input {
    Boolean? quiet_mode
  }
  command <<<
    harvesttools \
      ~{true="-q" false="" quiet_mode}
  >>>
  parameter_meta {
    quiet_mode: "(quiet mode)"
  }
}