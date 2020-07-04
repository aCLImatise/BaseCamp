version 1.0

task SvtkCountSvtypesFout {
  input {
    Boolean? no_header
    Boolean? total_obs
    Boolean? total_variants
    String s_vtk
    String count_sv_types
  }
  command <<<
    svtk count-svtypes fout \
      ~{s_vtk} \
      ~{count_sv_types} \
      ~{true="--no-header" false="" no_header} \
      ~{true="--total-obs" false="" total_obs} \
      ~{true="--total-variants" false="" total_variants}
  >>>
  parameter_meta {
    no_header: ""
    total_obs: ""
    total_variants: ""
    s_vtk: ""
    count_sv_types: ""
  }
}