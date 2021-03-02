version 1.0

task Calcprobspy {
  input {
    File? read_structures_input
    Float? temperature
  }
  command <<<
    calcprobs_py \
      ~{if defined(read_structures_input) then ("--input " +  '"' + read_structures_input + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_structures_input: "Read structures from input file. Format must be dot-\\nbracket structures, each per one line with a trailing\\nline containing only a semi-colon. (default: None)"
    temperature: "Temperature of the energy calculations. (default:\\n37.0)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}