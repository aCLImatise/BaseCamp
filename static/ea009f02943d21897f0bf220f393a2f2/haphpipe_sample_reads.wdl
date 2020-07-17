version 1.0

task HaphpipeSampleReads {
  input {
    String? fq_one
    String? fq_two
    String? f_qu
    String? outdir
    String? n_reads
    String? frac
    String? seed
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    haphpipe sample_reads \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(f_qu) then ("--fqU " +  '"' + f_qu + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(n_reads) then ("--nreads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(frac) then ("--frac " +  '"' + frac + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 2"
    f_qu: "Fastq file with unpaired reads"
    outdir: "Output directory (default: .)"
    n_reads: "Number of reads to sample. If greater than the number of reads in file, all reads will be sampled."
    frac: "Fraction of reads to sample, between 0 and 1. Each read has [frac] probability of being sampled, so number of sampled reads is not precisely [frac * num_reads]."
    seed: "Seed for random number generator."
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}