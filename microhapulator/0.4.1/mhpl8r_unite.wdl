version 1.0

task Mhpl8rUnite {
  input {
    File? out
    Int? seed
  }
  command <<<
    mhpl8r unite \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    out: "write output to \\\"FILE\\\"; by default, output is written\\nto the terminal (standard output)"
    seed: "seed for random number generator"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}