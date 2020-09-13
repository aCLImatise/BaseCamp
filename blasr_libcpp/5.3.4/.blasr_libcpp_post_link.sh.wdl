version 1.0

task BlasrLibcpppostlinksh {
  command <<<
    _blasr_libcpp_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}