version 1.0

task RandomizeMotifsplMotiffile {
  command <<<
    randomizeMotifs_pl motif_file
  >>>
  output {
    File out_stdout = stdout()
  }
}