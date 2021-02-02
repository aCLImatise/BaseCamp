version 1.0

task FaRandomize {
  input {
    String? seed
    String in_dot_fa
    String randomized_dot_fa
  }
  command <<<
    faRandomize \
      ~{in_dot_fa} \
      ~{randomized_dot_fa} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    seed: ""
    in_dot_fa: ""
    randomized_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}