version 1.0

task HaphpipeTrimReads {
  input {
    String? fq_one
    String? fq_two
    String? f_qu
    String? outdir
    String? adapter_file
    String? trimmers
    Boolean? encoding
    String? n_cpu
    Boolean? quiet
    String? log_file
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
      ~{true="--encoding" false="" encoding} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 1"
    f_qu: "Fastq file with unpaired reads"
    outdir: "Output directory (default: .)"
    adapter_file: "Adapter file"
    trimmers: "Trim commands for trimmomatic (default: ['LEADING:3', 'TRAILING:3', 'SLIDINGWINDOW:4:15', 'MINLEN:36'])"
    encoding: "{Phred+33,Phred+64} Quality score encoding"
    n_cpu: "Number of CPU to use (default: 1)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}