version 1.0

task Mbplotkmerenrichment {
  input {
    Int? km_er
    String? start
    String? stop
    Int? width
    String? key
    File? filter_gff
    Int? a_width
    Boolean? remove
    Boolean? verbose
  }
  command <<<
    mb_plot_kmer_enrichment \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(filter_gff) then ("--filterGFF " +  '"' + filter_gff + '"') else ""} \
      ~{if defined(a_width) then ("--awidth " +  '"' + a_width + '"') else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    km_er: "kmer-length"
    start: "start index of PAR-CLIP sites"
    stop: "stop index of PAR-CLIP sites"
    width: "number of nt +/- the crosslink site"
    key: "set key that is used for PAR-CLIP site ordering"
    filter_gff: "set path to GFF if sites should be removed that\\noverlap with the GFF. By default no sites are filtered\\nout."
    a_width: "number of nt that are added to the start/stop indices\\nof the GFF annotations"
    remove: "remove temporary text files"
    verbose: "verbose output"
  }
  output {
    File out_stdout = stdout()
    File out_filter_gff = "${in_filter_gff}"
  }
}