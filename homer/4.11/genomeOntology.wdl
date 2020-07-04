version 1.0

task GenomeOntology {
  input {
    Boolean? given_maximum_distance
    File? file
    Boolean? g_size
    String primary_peak_file
    String? additional
    String? peak_slash_ann
    File? files_dot_dot_dot
  }
  command <<<
    genomeOntology \
      ~{primary_peak_file} \
      ~{additional} \
      ~{peak_slash_ann} \
      ~{files_dot_dot_dot} \
      ~{true="-d" false="" given_maximum_distance} \
      ~{if defined(file) then ("-file " +  '"' + file + '"') else ""} \
      ~{true="-gsize" false="" g_size}
  >>>
  parameter_meta {
    given_maximum_distance: "<#|given> (Maximum distance between peak centers to consider, default: 100) Using \"-d given\" looks for literal overlaps in peak regions, and calculates significance based on the total overlap in bp between peaks/annotations Use \"-d given\" when features have vastly different sizes (i.e. introns vs. peaks)"
    file: "(file listing peak files to compare - for lots of peak files)"
    g_size: "<#> (Genome size for significance calculations, default: 2e9)"
    primary_peak_file: ""
    additional: ""
    peak_slash_ann: ""
    files_dot_dot_dot: ""
  }
}