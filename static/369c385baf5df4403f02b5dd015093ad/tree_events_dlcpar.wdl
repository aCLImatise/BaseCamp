version 1.0

task TreeEventsDlcpar {
  input {
    Boolean? explicit
  }
  command <<<
    tree-events-dlcpar \
      ~{true="--explicit" false="" explicit}
  >>>
  parameter_meta {
    explicit: "set to ignore extra lineages at implied speciation nodes"
  }
}