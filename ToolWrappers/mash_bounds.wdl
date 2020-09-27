version 1.0

task MashBounds {
  input {
    Int? kmer_size_
    Int? mash_distance_estimates
    String option
  }
  command <<<
    mash bounds \
      ~{option} \
      ~{if defined(kmer_size_) then ("-k " +  '"' + kmer_size_ + '"') else ""} \
      ~{if defined(mash_distance_estimates) then ("-p " +  '"' + mash_distance_estimates + '"') else ""}
  >>>
  parameter_meta {
    kmer_size_: "k-mer size. (1-32) [21]"
    mash_distance_estimates: "Mash distance estimates will be within the given error bounds with\\nthis probability. (0-1) [0.99]\\n"
    option: "Description (range) [default]"
  }
  output {
    File out_stdout = stdout()
  }
}