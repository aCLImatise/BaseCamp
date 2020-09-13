version 1.0

task Fastqsample {
  input {
    Int? number_sample_default
    String? proportion_total_reads
    File? output_file_prefix
    Boolean? with_replacement
    Int? seed
  }
  command <<<
    fastq_sample \
      ~{if defined(number_sample_default) then ("-n " +  '"' + number_sample_default + '"') else ""} \
      ~{if defined(proportion_total_reads) then ("-p " +  '"' + proportion_total_reads + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output " +  '"' + output_file_prefix + '"') else ""} \
      ~{if (with_replacement) then "--with-replacement" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    number_sample_default: "the number of reads to sample (default: 10000)"
    proportion_total_reads: "the proportion of the total reads to sample"
    output_file_prefix: "output file prefix"
    with_replacement: "sample with replacement"
    seed: "a manual seed to the random number generator"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}