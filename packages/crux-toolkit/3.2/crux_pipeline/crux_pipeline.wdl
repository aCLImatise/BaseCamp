version 1.0

task CruxPipeline {
  input {
    Int? gap_tolerance_dot
    Boolean? train_fdr
  }
  command <<<
    crux pipeline \
      ~{if defined(gap_tolerance_dot) then ("--gap-tolerance. " +  '"' + gap_tolerance_dot + '"') else ""} \
      ~{if (train_fdr) then "--train-fdr" else ""}
  >>>
  parameter_meta {
    gap_tolerance_dot: "= 3."
    train_fdr: "). This option allows the user to specify which feature is used"
  }
  output {
    File out_stdout = stdout()
  }
}