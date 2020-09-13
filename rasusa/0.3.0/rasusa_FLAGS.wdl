version 1.0

task RasusaFLAGS {
  input {
    String? var_input
    Int? genome_size
    String? coverage
  }
  command <<<
    rasusa FLAGS \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    genome_size: ""
    coverage: ""
  }
  output {
    File out_stdout = stdout()
  }
}