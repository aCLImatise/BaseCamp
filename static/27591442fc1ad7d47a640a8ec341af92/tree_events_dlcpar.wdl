version 1.0

task TreeEventsDlcpar {
  input {
    Boolean explicitExplicit
  }
  command <<<
    tree-events-dlcpar \
      ~{true="--explicit" false="" explicitExplicit}
  >>>
}