version 1.0

task Trawlerpostlinksh {
  command <<<
    _trawler_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}