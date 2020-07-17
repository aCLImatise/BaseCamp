version 1.0

task PybelManageDrop {
  input {
    Boolean? yes
  }
  command <<<
    pybel manage drop \
      ~{true="--yes" false="" yes}
  >>>
  parameter_meta {
    yes: "Confirm the action without prompting."
  }
}