version 1.0

task CruxPercolator {
  input {
    Boolean? train_fdr
  }
  command <<<
    crux percolator \
      ~{if (train_fdr) then "--train-fdr" else ""}
  >>>
  parameter_meta {
    train_fdr: "). This option allows the user to specify which feature is used"
  }
  output {
    File out_stdout = stdout()
  }
}