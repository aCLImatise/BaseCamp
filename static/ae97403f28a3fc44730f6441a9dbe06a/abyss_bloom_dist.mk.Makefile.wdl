version 1.0

task AbyssbloomdistmkMakefile {
  command <<<
    abyss_bloom_dist_mk_Makefile
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  output {
    File out_stdout = stdout()
  }
}