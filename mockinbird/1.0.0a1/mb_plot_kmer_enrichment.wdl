version 1.0

task MbPlotKmerEnrichment {
  input {
    String? km_er
    String? start
    String? stop
    String? width
    String? key
    String? filter_gff
    String? a_width
    Boolean? remove
    Boolean? verbose
  }
  command <<<
    mb-plot-kmer-enrichment \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(filter_gff) then ("--filterGFF " +  '"' + filter_gff + '"') else ""} \
      ~{if defined(a_width) then ("--awidth " +  '"' + a_width + '"') else ""} \
      ~{true="--remove" false="" remove} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    km_er: "kmer-length"
    start: "start index of PAR-CLIP sites"
    stop: "stop index of PAR-CLIP sites"
    width: "number of nt +/- the crosslink site"
    key: "set key that is used for PAR-CLIP site ordering"
    filter_gff: "set path to GFF if sites should be removed that overlap with the GFF. By default no sites are filtered out."
    a_width: "number of nt that are added to the start/stop indices of the GFF annotations"
    remove: "remove temporary text files"
    verbose: "verbose output"
  }
}