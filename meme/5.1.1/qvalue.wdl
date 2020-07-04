version 1.0

task Qvalue {
  input {
    Int? seed
    String? verbosity
    String p_values
  }
  command <<<
    qvalue \
      ~{p_values} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    seed: "(default from clock)"
    verbosity: "|2|3|4 (default = 2)"
    p_values: ""
  }
}