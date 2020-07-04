version 1.0

task MapCoords {
  input {
    Directory? data
    Directory? path_to_map_genome_files
    Directory? align
    Boolean? lazy
    Boolean? truncate
    String source_genome
    String chromosome
    String start
    String end
    String strand
    String target_genome
  }
  command <<<
    map_coords \
      ~{source_genome} \
      ~{chromosome} \
      ~{start} \
      ~{end} \
      ~{strand} \
      ~{target_genome} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(path_to_map_genome_files) then ("--map " +  '"' + path_to_map_genome_files + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{true="--lazy" false="" lazy} \
      ~{true="--truncate" false="" truncate}
  >>>
  parameter_meta {
    data: "path to map, genome and alignment files"
    path_to_map_genome_files: "path to map and genome files"
    align: "path to alignment files"
    lazy: "warn, rather than die, if the subalignment can't be obtained"
    truncate: "truncate unmappable sequence (rather than skipping) and show truncated subalignment"
    source_genome: ""
    chromosome: ""
    start: ""
    end: ""
    strand: ""
    target_genome: ""
  }
}