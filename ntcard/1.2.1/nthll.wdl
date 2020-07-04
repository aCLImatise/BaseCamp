version 1.0

task Nthll {
  input {
    String? threads
    String? km_er
    String? option
  }
  command <<<
    nthll \
      ~{option} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""}
  >>>
  parameter_meta {
    threads: "use N parallel threads [1] (N>=2 should be used when input files are >=2)"
    km_er: "the length of kmer [64]"
    option: ""
  }
}