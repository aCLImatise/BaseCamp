version 1.0

task JoinAugPredpl {
  command <<<
    join_aug_pred_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}