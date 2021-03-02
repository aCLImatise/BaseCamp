version 1.0

task AnalyzeBlastPlusTopHitCoveragepl {
  command <<<
    analyze_blastPlus_topHit_coverage_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}