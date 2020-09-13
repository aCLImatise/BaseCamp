version 1.0

task Hitacpy {
  input {
    Int? km_er
    Int? threads
  }
  command <<<
    hitac_py \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    km_er: "Kmer size for feature extraction [default: 6]"
    threads: "Number of threads [default: all threads available]"
  }
  output {
    File out_stdout = stdout()
  }
}