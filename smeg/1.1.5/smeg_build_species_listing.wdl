version 1.0

task SmegBuildSpeciesListing {
  input {
    Boolean? _is_required
  }
  command <<<
    smeg build_species listing \
      ~{if (_is_required) then "-g" else ""}
  >>>
  parameter_meta {
    _is_required: "[option] is required"
  }
  output {
    File out_stdout = stdout()
  }
}