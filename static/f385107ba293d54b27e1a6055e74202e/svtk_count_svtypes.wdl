version 1.0

task SvtkCountSvtypes {
  input {
    Boolean? no_header
    Boolean? total_obs
    Boolean? total_variants
  }
  command <<<
    svtk count-svtypes \
      ~{true="--no-header" false="" no_header} \
      ~{true="--total-obs" false="" total_obs} \
      ~{true="--total-variants" false="" total_variants}
  >>>
  parameter_meta {
    no_header: "Don't include header in output"
    total_obs: "Sum variant counts across samples"
    total_variants: "Sum variant counts across samples"
  }
}