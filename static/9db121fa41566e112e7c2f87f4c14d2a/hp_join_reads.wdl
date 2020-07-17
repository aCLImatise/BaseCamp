version 1.0

task HpJoinReads {
  input {
    String? fq_one
    String? fq_two
    String? outdir
    Int? min_overlap
    Int? max_overlap
    Boolean? allow_out_ies
    String? encoding
    String? n_cpu
    Boolean? keep_tmp
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    hp_join_reads \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(max_overlap) then ("--max_overlap " +  '"' + max_overlap + '"') else ""} \
      ~{true="--allow_outies" false="" allow_out_ies} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 1"
    outdir: "Output directory"
    min_overlap: "The minimum required overlap length between two reads to provide a confident overlap. (default: 10)"
    max_overlap: "Maximum overlap length expected in approximately 90 pct of read pairs, longer overlaps are penalized."
    allow_out_ies: "Also try combining read pairs in the \"outie\" orientation (default: False)"
    encoding: "Quality score encoding"
    n_cpu: "Number of CPU to use"
    keep_tmp: "Keep temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}