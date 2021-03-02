version 1.0

task HpJoinReads {
  input {
    Int? fq_one
    Int? fq_two
    Directory? outdir
    Int? min_overlap
    Int? max_overlap
    Boolean? allow_out_ies
    String? encoding
    Int? n_cpu
    Boolean? keep_tmp
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    hp_join_reads \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(max_overlap) then ("--max_overlap " +  '"' + max_overlap + '"') else ""} \
      ~{if (allow_out_ies) then "--allow_outies" else ""} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haphpipe:1.0.3--py_0"
  }
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 1"
    outdir: "Output directory"
    min_overlap: "The minimum required overlap length between two reads\\nto provide a confident overlap. (default: 10)"
    max_overlap: "Maximum overlap length expected in approximately 90\\npct of read pairs, longer overlaps are penalized."
    allow_out_ies: "Also try combining read pairs in the \\\"outie\\\"\\norientation (default: False)"
    encoding: "Quality score encoding"
    n_cpu: "Number of CPU to use"
    keep_tmp: "Keep temporary directory (default: False)"
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