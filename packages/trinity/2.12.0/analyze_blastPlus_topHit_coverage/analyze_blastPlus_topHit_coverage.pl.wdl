version 1.0

task AnalyzeBlastPlusTopHitCoveragepl {
  command <<<
    analyze_blastPlus_topHit_coverage_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.12.0--h5ef6573_0"
  }
  output {
    File out_stdout = stdout()
  }
}