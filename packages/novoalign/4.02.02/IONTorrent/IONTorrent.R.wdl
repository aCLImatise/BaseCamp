version 1.0

task IONTorrentR {
  command <<<
    IONTorrent_R
  >>>
  output {
    File out_stdout = stdout()
  }
}