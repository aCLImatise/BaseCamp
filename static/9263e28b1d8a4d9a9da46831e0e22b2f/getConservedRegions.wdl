version 1.0

task GetConservedRegions.pl {
  input {
    String? peak_regions_exclude
    Boolean? keep_exons
    String peak_file
    String genome_version
    String? additional
    String? options_dot_dot_dot
  }
  command <<<
    getConservedRegions.pl \
      ~{peak_file} \
      ~{genome_version} \
      ~{additional} \
      ~{options_dot_dot_dot} \
      ~{if defined(peak_regions_exclude) then ("-p " +  '"' + peak_regions_exclude + '"') else ""} \
      ~{true="-keepExons" false="" keep_exons}
  >>>
  parameter_meta {
    peak_regions_exclude: "[peakfile2]... (peak regions to exclude)"
    keep_exons: "(By default, exons are excluded)"
    peak_file: ""
    genome_version: ""
    additional: ""
    options_dot_dot_dot: ""
  }
}