version 1.0

task HaphpipeSampleReads {
  input {
    Int? fq_one
    Int? fq_two
    File? f_qu
    Directory? outdir
    Int? n_reads
    Int? frac
    Int? seed
    Boolean? quiet
    File? log_file
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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 2"
    f_qu: "Fastq file with unpaired reads"
    outdir: "Output directory (default: .)"
    n_reads: "Number of reads to sample. If greater than the number of\\nreads in file, all reads will be sampled."
    frac: "Fraction of reads to sample, between 0 and 1. Each read\\nhas [frac] probability of being sampled, so number of\\nsampled reads is not precisely [frac * num_reads]."
    seed: "Seed for random number generator."
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}