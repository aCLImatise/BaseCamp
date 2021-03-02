version 1.0

task MetagenomicspyKraken {
  input {
    File? out_report
    File? out_reads
    Float? filter_threshold
    Int? num_threads
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_bam
    String db
  }
  command <<<
    metagenomics_py kraken \
      ~{in_bam} \
      ~{db} \
      ~{if defined(out_report) then ("--outReport " +  '"' + out_report + '"') else ""} \
      ~{if defined(out_reads) then ("--outReads " +  '"' + out_reads + '"') else ""} \
      ~{if defined(filter_threshold) then ("--filterThreshold " +  '"' + filter_threshold + '"') else ""} \
      ~{if defined(num_threads) then ("--numThreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_report: "Kraken report output file."
    out_reads: "Kraken per read output file."
    filter_threshold: "Kraken filter threshold (default 0.05)"
    num_threads: "Number of threads to run. (default 1)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_bam: "Input unaligned reads, BAM format."
    db: "Kraken database directory."
  }
  output {
    File out_stdout = stdout()
    File out_out_report = "${in_out_report}"
    File out_out_reads = "${in_out_reads}"
  }
}