version 1.0

task RbtVcfmatch {
  input {
    Int? max_dist
    Int? max_len_diff
  }
  command <<<
    rbt vcf_match \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(max_len_diff) then ("--max-len-diff " +  '"' + max_len_diff + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3"
  }
  parameter_meta {
    max_dist: "Maximum distance between centres of two indels considered to match [default: 20]"
    max_len_diff: "Maximum difference between lengths of two indels [default: 10]"
  }
  output {
    File out_stdout = stdout()
  }
}