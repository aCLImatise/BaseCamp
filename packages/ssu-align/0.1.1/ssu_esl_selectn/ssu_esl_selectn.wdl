version 1.0

task Ssueslselectn {
  input {
    Int? seed
    Boolean? options
  }
  command <<<
    ssu_esl_selectn \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    seed: ": set random number generator's seed to <n>  [0]"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}