version 1.0

task RiboSim {
  input {
    Directory? output_directory_default
    File? verbosity
    Float? frequency
    Int? end_length
    String? seed
    String mutated
  }
  command <<<
    ribo sim \
      ~{mutated} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""} \
      ~{if defined(end_length) then ("--end_length " +  '"' + end_length + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory_default: "output directory; default: /"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
    frequency: "Probability of mutated basesdefault: 0.01"
    end_length: "if value given, only mutated the ends of the sequences\\nand ignore the middledefault: None"
    seed: "cause reproduciblity; default: None"
    mutated: "required named arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
    File out_verbosity = "${in_verbosity}"
  }
}