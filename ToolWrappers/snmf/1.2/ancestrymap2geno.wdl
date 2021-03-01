version 1.0

task Ancestrymap2geno {
  command <<<
    ancestrymap2geno
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}