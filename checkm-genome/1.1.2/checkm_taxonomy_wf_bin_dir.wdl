version 1.0

task CheckmTaxonomyWfBinDir {
  input {
    Boolean? ali
    Boolean? nt
    Boolean? g
    Boolean? individual_markers
    String check_m
    String taxonomy_wf
  }
  command <<<
    checkm taxonomy_wf bin_dir \
      ~{check_m} \
      ~{taxonomy_wf} \
      ~{true="--ali" false="" ali} \
      ~{true="--nt" false="" nt} \
      ~{true="-g" false="" g} \
      ~{true="--individual_markers" false="" individual_markers}
  >>>
  parameter_meta {
    ali: ""
    nt: ""
    g: ""
    individual_markers: ""
    check_m: ""
    taxonomy_wf: ""
  }
}