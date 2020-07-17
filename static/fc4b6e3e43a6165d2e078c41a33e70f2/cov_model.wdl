version 1.0

task CovModel.py {
  input {
    Boolean? kmers_counted_wo
    String? ratio
    Boolean? no_sample
    String counts_file
  }
  command <<<
    cov_model.py \
      ~{counts_file} \
      ~{true="--int" false="" kmers_counted_wo} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{true="--no_sample" false="" no_sample}
  >>>
  parameter_meta {
    kmers_counted_wo: "Kmers were counted as integers w/o the use of quality values [default: False]"
    ratio: "Likelihood ratio to set trusted/untrusted cutoff [default: 200]"
    no_sample: "Do not sample kmer coverages into kmers.txt because its already done [default: False]"
    counts_file: ""
  }
}