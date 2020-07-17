version 1.0

task LoadPromoters.pl {
  input {
    String? analysis_start_default
    String? ae
    Int? size
    Boolean? dist
    Boolean? offset
    String required_parameters_dot_dot_dot
  }
  command <<<
    loadPromoters.pl \
      ~{required_parameters_dot_dot_dot} \
      ~{if defined(analysis_start_default) then ("-as " +  '"' + analysis_start_default + '"') else ""} \
      ~{if defined(ae) then ("-ae " +  '"' + ae + '"') else ""} \
      ~{if defined(size) then ("-size " +  '"' + size + '"') else ""} \
      ~{true="-dist" false="" dist} \
      ~{true="-offset" false="" offset}
  >>>
  parameter_meta {
    analysis_start_default: "(Redundant/CpG analysis start, default: -300)"
    ae: "(Redundant/CpG analysis end, default: 50)"
    size: "(default: 4000, i.e. +/- 2000 from the TSS)"
    dist: "<#> (Distance between promoters to consider redundant, default: 500)"
    offset: "<#> (offset of the first base, i.e. -1000 for 1kb upstream)"
    required_parameters_dot_dot_dot: ""
  }
}