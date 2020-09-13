version 1.0

task GetMappingStatspl {
  input {
    Boolean? min
    String? genome
    Directory sample_directory
    String? sample
    Int? directory_two
  }
  command <<<
    getMappingStats_pl \
      ~{sample_directory} \
      ~{sample} \
      ~{directory_two} \
      ~{if (min) then "-min" else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""}
  >>>
  parameter_meta {
    min: "<#> (minimum length to consider a sequence an adapter-dimer, def. 15)"
    genome: "(limit analysis to alignment for this genome)"
    sample_directory: ""
    sample: ""
    directory_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}