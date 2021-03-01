version 1.0

task ScoreCDSLikelihoodAll6Framespl {
  command <<<
    score_CDS_likelihood_all_6_frames_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}