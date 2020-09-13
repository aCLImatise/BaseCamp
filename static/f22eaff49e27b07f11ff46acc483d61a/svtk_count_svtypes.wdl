version 1.0

task SvtkCountsvtypes {
  input {
    Boolean? no_header
    Boolean? total_obs
    Boolean? total_variants
  }
  command <<<
    svtk count_svtypes \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (total_obs) then "--total-obs" else ""} \
      ~{if (total_variants) then "--total-variants" else ""}
  >>>
  parameter_meta {
    no_header: "Don't include header in output"
    total_obs: "Sum variant counts across samples"
    total_variants: "Sum variant counts across samples"
  }
  output {
    File out_stdout = stdout()
  }
}