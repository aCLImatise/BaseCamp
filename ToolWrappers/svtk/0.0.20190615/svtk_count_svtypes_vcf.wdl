version 1.0

task SvtkCountsvtypesVcf {
  input {
    Boolean? total_variants
    Boolean? total_obs
    Boolean? no_header
    String s_vtk
    String count_sv_types
  }
  command <<<
    svtk count_svtypes vcf \
      ~{s_vtk} \
      ~{count_sv_types} \
      ~{if (total_variants) then "--total-variants" else ""} \
      ~{if (total_obs) then "--total-obs" else ""} \
      ~{if (no_header) then "--no-header" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    total_variants: ""
    total_obs: ""
    no_header: ""
    s_vtk: ""
    count_sv_types: ""
  }
  output {
    File out_stdout = stdout()
  }
}