version 1.0

task SliceMercatorAlignment {
  input {
    Directory? data
    Directory? path_map_genome
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
      ~{if defined(path_map_genome) then ("--map " +  '"' + path_map_genome + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (lazy) then "--lazy" else ""} \
      ~{if (truncate) then "--truncate" else ""} \
      ~{if (stockholm) then "--stockholm" else ""} \
      ~{if (zero_based) then "--zerobased" else ""} \
      ~{if (half_open) then "--halfopen" else ""}
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
    stockholm: "use and display Stockholm-format alignments with conservation statistics (default is multi-FASTA)"
    zero_based: "coordinates are 0-based (default is 1-based)"
    half_open: "end coordinate is open, i.e., [start, end)"
    genome: ""
    chromosome: ""
    start: ""
    end: ""
    strand: ""
  }
  output {
    File out_stdout = stdout()
  }
}