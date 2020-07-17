version 1.0

task GappaToolsLicense {
  input {
    Boolean? full
  }
  command <<<
    gappa tools license \
      ~{true="--full" false="" full}
  >>>
  parameter_meta {
    full: "If set, show the full license instead of the short boilerplate."
  }
}