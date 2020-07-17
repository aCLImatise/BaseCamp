version 1.0

task SvtkVcf2bed {
  input {
    Boolean? no_samples
    String? info
    Boolean? include_filters
    Boolean? split_bnd
    Boolean? split_cpx
    Boolean? no_header
    Boolean? no_sort_coords
    Boolean? no_unresolved
    Boolean? simple_sinks
    String vcf
    String bed
  }
  command <<<
    svtk vcf2bed \
      ~{vcf} \
      ~{bed} \
      ~{true="--no-samples" false="" no_samples} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{true="--include-filters" false="" include_filters} \
      ~{true="--split-bnd" false="" split_bnd} \
      ~{true="--split-cpx" false="" split_cpx} \
      ~{true="--no-header" false="" no_header} \
      ~{true="--no-sort-coords" false="" no_sort_coords} \
      ~{true="--no-unresolved" false="" no_unresolved} \
      ~{true="--simple-sinks" false="" simple_sinks}
  >>>
  parameter_meta {
    no_samples: "Don't include comma-delimited list of called samples for each variant."
    info: "INFO field to include as column in output. May be specified more than once. To include all INFO fields, specify `--info ALL`. INFO fields are reported in the order in which they are requested. If ALL INFO fields are requested, they are reported in the order in which they appear in the VCF header."
    include_filters: "Include FILTER status in output, with the same behavior an INFO field."
    split_bnd: "Report two entries in bed file for each BND."
    split_cpx: "Report entries for each CPX rearrangement interval."
    no_header: "Suppress header."
    no_sort_coords: "Do not sort start/end coordinates per record before writing to bed."
    no_unresolved: "Do not output unresolved variants."
    simple_sinks: "Report all INS sinks as 1bp intervals."
    vcf: "VCF to convert."
    bed: "Converted bed. Specify `-` or `stdout` to write to stdout."
  }
}