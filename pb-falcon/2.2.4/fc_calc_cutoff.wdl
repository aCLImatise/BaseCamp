version 1.0

task FcCalcCutoff {
  input {
    Int? coverage
  }
  command <<<
    fc_calc_cutoff \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""}
  >>>
  parameter_meta {
    coverage: "Desired coverage ratio (i.e. over-sampling) (default: 20)"
  }
  output {
    File out_stdout = stdout()
  }
}