version 1.0

task Calcprobs.py {
  input {
    String? read_structures_input
    String? temperature
  }
  command <<<
    calcprobs.py \
      ~{if defined(read_structures_input) then ("--input " +  '"' + read_structures_input + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""}
  >>>
  parameter_meta {
    read_structures_input: "Read structures from input file. Format must be dot- bracket structures, each per one line with a trailing line containing only a semi-colon. (default: None)"
    temperature: "Temperature of the energy calculations. (default: 37.0)"
  }
}