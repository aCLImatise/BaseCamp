version 1.0

task AbyssbloomdistmkMakefile {
  command <<<
    abyss_bloom_dist_mk_Makefile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}