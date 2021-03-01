version 1.0

task HaphpipeEcReads {
  input {
    Int? fq_one
    Int? fq_two
    File? f_qu
    Directory? outdir
    Int? n_cpu
    Boolean? keep_tmp
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    haphpipe ec_reads \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(f_qu) then ("--fqU " +  '"' + f_qu + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
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
    outdir: "Output directory"
    n_cpu: "Number of CPU to use (default: 1)"
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