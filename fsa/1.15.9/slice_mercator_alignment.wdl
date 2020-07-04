version 1.0

task SliceMercatorAlignment {
  input {
    Directory? data
    Directory? path_to_map_genome_files
    Directory? align
    Boolean? lazy
    Boolean? truncate
    Boolean? stockholm
    Boolean? zero_based
    Boolean? half_open
    String genome
    String chromosome
    String start
    String end
    String strand
  }
  command <<<
    slice_mercator_alignment \
      ~{genome} \
      ~{chromosome} \
      ~{start} \
      ~{end} \
      ~{strand} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(path_to_map_genome_files) then ("--map " +  '"' + path_to_map_genome_files + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{true="--lazy" false="" lazy} \
      ~{true="--truncate" false="" truncate} \
      ~{true="--stockholm" false="" stockholm} \
      ~{true="--zerobased" false="" zero_based} \
      ~{true="--halfopen" false="" half_open}
  >>>
  parameter_meta {
    data: "path to map, genome and alignment files"
    path_to_map_genome_files: "path to map and genome files"
    align: "path to alignment files"
    lazy: "warn, rather than die, if the subalignment can't be obtained"
    truncate: "truncate unmappable sequence (rather than skipping) and show truncated subalignment"
    stockholm: "use and display Stockholm-format alignments with conservation statistics (default is multi-FASTA)"
    zero_based: "coordinates are 0-based (default is 1-based)"
    half_open: "end coordinate is open, i.e., [start, end)"
    genome: ""
    chromosome: ""
    start: ""
    end: ""
    strand: ""
  }
}