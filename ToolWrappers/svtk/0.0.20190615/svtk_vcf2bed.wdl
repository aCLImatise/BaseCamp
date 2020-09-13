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
    String stdout_dot
  }
  command <<<
    svtk vcf2bed \
      ~{vcf} \
      ~{bed} \
      ~{stdout_dot} \
      ~{if (no_samples) then "--no-samples" else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if (include_filters) then "--include-filters" else ""} \
      ~{if (split_bnd) then "--split-bnd" else ""} \
      ~{if (split_cpx) then "--split-cpx" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (no_sort_coords) then "--no-sort-coords" else ""} \
      ~{if (no_unresolved) then "--no-unresolved" else ""} \
      ~{if (simple_sinks) then "--simple-sinks" else ""}
  >>>
  parameter_meta {
    no_samples: "Don't include comma-delimited list of called samples\\nfor each variant."
    info: "INFO field to include as column in output. May be\\nspecified more than once. To include all INFO fields,\\nspecify `--info ALL`. INFO fields are reported in the\\norder in which they are requested. If ALL INFO fields\\nare requested, they are reported in the order in which\\nthey appear in the VCF header."
    include_filters: "Include FILTER status in output, with the same\\nbehavior an INFO field."
    split_bnd: "Report two entries in bed file for each BND."
    split_cpx: "Report entries for each CPX rearrangement interval."
    no_header: "Suppress header."
    no_sort_coords: "Do not sort start/end coordinates per record before\\nwriting to bed."
    no_unresolved: "Do not output unresolved variants."
    simple_sinks: "Report all INS sinks as 1bp intervals."
    vcf: "VCF to convert."
    bed: "Converted bed. Specify `-` or `stdout` to write to"
    stdout_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}