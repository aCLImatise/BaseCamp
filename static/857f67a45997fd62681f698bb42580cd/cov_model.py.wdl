version 1.0

task CovModelpy {
  input {
    Boolean? kmers_counted_integers
    Int? ratio
    Boolean? no_sample
    File counts_file
  }
  command <<<
    cov_model_py \
      ~{counts_file} \
      ~{if (kmers_counted_integers) then "--int" else ""} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if (no_sample) then "--no_sample" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmers_counted_integers: "Kmers were counted as integers w/o the use of quality values\\n[default: False]"
    ratio: "Likelihood ratio to set trusted/untrusted cutoff [default:\\n200]"
    no_sample: "Do not sample kmer coverages into kmers.txt because its\\nalready done [default: False]\\n"
    counts_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}