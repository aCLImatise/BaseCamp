version 1.0

task Molpopgenanalysispostlinksh {
  command <<<
    _molpopgen_analysis_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}