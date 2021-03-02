version 1.0

task MapGffCoords {
  input {
    String? type
    Directory? data
    Directory? path_map_genome
    Directory? align
    Boolean? lazy
    Boolean? truncate
    Boolean? force_entry
    Boolean? verbose
    String source_genome
    File source_gff_file
    String target_genome
  }
  command <<<
    map_gff_coords \
      ~{source_genome} \
      ~{source_gff_file} \
      ~{target_genome} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(path_map_genome) then ("--map " +  '"' + path_map_genome + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (lazy) then "--lazy" else ""} \
      ~{if (truncate) then "--truncate" else ""} \
      ~{if (force_entry) then "--force-entry" else ""} \
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
    force_entry: "if a feature can't be mapped, then add an empty entry to the GFF file (rather than skipping it entirely); implies --lazy"
    verbose: "report progress"
    source_genome: ""
    source_gff_file: ""
    target_genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}