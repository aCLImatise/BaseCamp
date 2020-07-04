version 1.0

task RasusaFLAGS {
  input {
    String? coverage
    String? genome_size
    String? var_input
  }
  command <<<
    rasusa FLAGS \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  parameter_meta {
    coverage: ""
    genome_size: ""
    var_input: ""
  }
}