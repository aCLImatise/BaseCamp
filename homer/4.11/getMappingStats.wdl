version 1.0

task GetMappingStats.pl {
  input {
    Boolean? min
    String? genome
    String sample_directory
    String? sample
    Directory? directory_two
  }
  command <<<
    getMappingStats.pl \
      ~{sample_directory} \
      ~{sample} \
      ~{directory_two} \
      ~{true="-min" false="" min} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""}
  >>>
  parameter_meta {
    min: "<#> (minimum length to consider a sequence an adapter-dimer, def. 15)"
    genome: "(limit analysis to alignment for this genome)"
    sample_directory: ""
    sample: ""
    directory_two: ""
  }
}