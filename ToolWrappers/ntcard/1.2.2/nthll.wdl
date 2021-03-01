version 1.0

task Nthll {
  input {
    Int? threads
    Int? km_er
  }
  command <<<
    nthll \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ntcard:1.2.2--he513fc3_0"
  }
  parameter_meta {
    threads: "use N parallel threads [1] (N>=2 should be used when input files are >=2)"
    km_er: "the length of kmer [64]"
  }
  output {
    File out_stdout = stdout()
  }
}