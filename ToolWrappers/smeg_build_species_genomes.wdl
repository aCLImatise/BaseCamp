version 1.0

task SmegBuildSpeciesGenomes {
  input {
    Boolean? _is_required
  }
  command <<<
    smeg build_species genomes \
      ~{if (_is_required) then "-g" else ""}
  >>>
  parameter_meta {
    _is_required: "[option] is required"
  }
  output {
    File out_stdout = stdout()
  }
}