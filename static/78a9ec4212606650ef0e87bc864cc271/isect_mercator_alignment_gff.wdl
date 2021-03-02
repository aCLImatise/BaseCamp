version 1.0

task IsectMercatorAlignmentGff {
  input {
    String? type
    Directory? data
    Directory? path_map_genome
    Directory? align
    Boolean? lazy
    Boolean? truncate
    Boolean? stockholm
    Boolean? verbose
    String genome
    File gff_file
  }
  command <<<
    isect_mercator_alignment_gff \
      ~{genome} \
      ~{gff_file} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(path_map_genome) then ("--map " +  '"' + path_map_genome + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (lazy) then "--lazy" else ""} \
      ~{if (truncate) then "--truncate" else ""} \
      ~{if (stockholm) then "--stockholm" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fsa:1.15.9--h8b12597_1"
  }
  parameter_meta {
    type: "only look at features of particular type"
    data: "path to map, genome and alignment files"
    path_map_genome: "path to map and genome files"
    align: "path to alignment files"
    lazy: "warn, rather than die, if the subalignment can't be obtained"
    truncate: "truncate unmappable sequence (rather than skipping) and show truncated subalignment"
    stockholm: "use and display Stockholm-format alignments with conservation statistics (default is multi-FASTA)"
    verbose: "report progress"
    genome: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}