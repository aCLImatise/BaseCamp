version 1.0

task JoinAugPredpl {
  command <<<
    join_aug_pred_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}