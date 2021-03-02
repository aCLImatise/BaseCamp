version 1.0

task HaphpipeTrimReads {
  input {
    Int? fq_one
    Int? fq_two
    File? f_qu
    Directory? outdir
    File? adapter_file
    Int? trimmers
    Boolean? encoding
    Int? n_cpu
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    haphpipe trim_reads \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(f_qu) then ("--fqU " +  '"' + f_qu + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(adapter_file) then ("--adapter_file " +  '"' + adapter_file + '"') else ""} \
      ~{if defined(trimmers) then ("--trimmers " +  '"' + trimmers + '"') else ""} \
      ~{if (encoding) then "--encoding" else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
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
    f_qu: "Fastq file with unpaired reads"
    outdir: "Output directory (default: .)"
    adapter_file: "Adapter file"
    trimmers: "Trim commands for trimmomatic (default: ['LEADING:3',\\n'TRAILING:3', 'SLIDINGWINDOW:4:15', 'MINLEN:36'])"
    encoding: "{Phred+33,Phred+64}\\nQuality score encoding"
    n_cpu: "Number of CPU to use (default: 1)"
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