version 1.0

task WgfastGenbankqcSpecies {
  input {
    Int? unknowns
    Float? acceptable_deviations_median_number
    Float? distance
    Float? all
    Boolean? metadata
    Int? processes
    String s__assemblysize
  }
  command <<<
    wgfast_genbankqc species \
      ~{s__assemblysize} \
      ~{if defined(unknowns) then ("--unknowns " +  '"' + unknowns + '"') else ""} \
      ~{if defined(acceptable_deviations_median_number) then ("--contigs " +  '"' + acceptable_deviations_median_number + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(all) then ("--all " +  '"' + all + '"') else ""} \
      ~{if (metadata) then "--metadata" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unknowns: "Maximum number of unknown bases (not A, T, C, G)"
    acceptable_deviations_median_number: "Acceptable deviations from median number of"
    distance: "Acceptable deviations from median MASH distances"
    all: "Acceptable deviations for all metrics"
    metadata: "Get metadata for genome at PATH"
    processes: "Number of processes"
    s__assemblysize: "-s, --assembly_size FLOAT  Acceptable deviations from median assembly size"
  }
  output {
    File out_stdout = stdout()
  }
}