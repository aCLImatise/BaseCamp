version 1.0

task PybelManageDrop {
  input {
    Boolean yesYes
  }
  command <<<
    pybel manage drop \
      ~{true="--yes" false="" yesYes}
  >>>
}