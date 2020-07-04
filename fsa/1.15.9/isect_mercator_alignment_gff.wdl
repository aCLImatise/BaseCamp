version 1.0

task IsectMercatorAlignmentGff {
  input {
    String? type
    Directory? data
    Directory? path_to_map_genome_files
    Directory? align
    Boolean? lazy
    Boolean? truncate
    Boolean? stockholm
    Boolean? verbose
    String genome
    String gff_file
  }
  command <<<
    isect_mercator_alignment_gff \
      ~{genome} \
      ~{gff_file} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(path_to_map_genome_files) then ("--map " +  '"' + path_to_map_genome_files + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{true="--lazy" false="" lazy} \
      ~{true="--truncate" false="" truncate} \
      ~{true="--stockholm" false="" stockholm} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    type: "only look at features of particular type"
    data: "path to map, genome and alignment files"
    path_to_map_genome_files: "path to map and genome files"
    align: "path to alignment files"
    lazy: "warn, rather than die, if the subalignment can't be obtained"
    truncate: "truncate unmappable sequence (rather than skipping) and show truncated subalignment"
    stockholm: "use and display Stockholm-format alignments with conservation statistics (default is multi-FASTA)"
    verbose: "report progress"
    genome: ""
    gff_file: ""
  }
}