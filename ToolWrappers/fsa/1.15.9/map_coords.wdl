version 1.0

task MapCoords {
  input {
    Directory? data
    Directory? path_map_genome
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
      ~{if defined(path_map_genome) then ("--map " +  '"' + path_map_genome + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (lazy) then "--lazy" else ""} \
      ~{if (truncate) then "--truncate" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fsa:1.15.9--h8b12597_1"
  }
  parameter_meta {
    data: "path to map, genome and alignment files"
    path_map_genome: "path to map and genome files"
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
  output {
    File out_stdout = stdout()
  }
}