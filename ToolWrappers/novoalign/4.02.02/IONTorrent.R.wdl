version 1.0

task IONTorrentR {
  command <<<
    IONTorrent_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}