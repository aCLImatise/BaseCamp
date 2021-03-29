version 1.0

task Spadespostlinksh {
  command <<<
    _spades_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.2--h633aebb_0"
  }
  output {
    File out_stdout = stdout()
  }
}