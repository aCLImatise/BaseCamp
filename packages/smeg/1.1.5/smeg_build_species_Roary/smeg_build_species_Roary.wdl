version 1.0

task SmegBuildSpeciesRoary {
  input {
    Boolean? _is_required
  }
  command <<<
    smeg build_species Roary \
      ~{if (_is_required) then "-g" else ""}
  >>>
  parameter_meta {
    _is_required: "[option] is required"
  }
  output {
    File out_stdout = stdout()
  }
}