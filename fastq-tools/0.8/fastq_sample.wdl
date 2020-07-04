version 1.0

task FastqSample {
  input {
    String? number_sample_default
    String? proportion_total_reads
    String? output_file_prefix
    Boolean? with_replacement
    String? seed
  }
  command <<<
    fastq-sample \
      ~{if defined(number_sample_default) then ("-n " +  '"' + number_sample_default + '"') else ""} \
      ~{if defined(proportion_total_reads) then ("-p " +  '"' + proportion_total_reads + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output " +  '"' + output_file_prefix + '"') else ""} \
      ~{true="--with-replacement" false="" with_replacement} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    number_sample_default: "the number of reads to sample (default: 10000)"
    proportion_total_reads: "the proportion of the total reads to sample"
    output_file_prefix: "output file prefix"
    with_replacement: "sample with replacement"
    seed: "a manual seed to the random number generator"
  }
}