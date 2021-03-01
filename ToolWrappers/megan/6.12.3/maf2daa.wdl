version 1.0

task Maf2daa {
  input {
    Boolean? in
    Boolean? _reads_sets
    Boolean? out
    Boolean? top_percent
    Boolean? procs
    Boolean? streaming_procs
    Boolean? chunksize
    Boolean? tmp
    Boolean? verbose
  }
  command <<<
    maf2daa \
      ~{if (in) then "--in" else ""} \
      ~{if (_reads_sets) then "-r" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (top_percent) then "--topPercent" else ""} \
      ~{if (procs) then "--procs" else ""} \
      ~{if (streaming_procs) then "--streamingProcs" else ""} \
      ~{if (chunksize) then "--chunkSize" else ""} \
      ~{if (tmp) then "--tmp" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "sets path to MAF-File (can also be piped in, no gzip allowed here)"
    _reads_sets: ", -- reads             sets path to query-file in FASTA or FASTQ format (can also be gzipped)"
    out: "sets path of the reported DAA-File"
    top_percent: "sets top percent of reads kept during filtering (default: 10.0)"
    procs: "sets number of used processors (default: maximal number)"
    streaming_procs: "sets number of used processors while input is piped-in (default: 1)"
    chunksize: "sets chunk-size of temporary MAF files (default: 500mb)"
    tmp: "sets folder for temporary files (default: parent folder of the resulting DAA-File)"
    verbose: "sets verbose mode reporting numbers of reads/references/alignments being analyzed)"
  }
  output {
    File out_stdout = stdout()
  }
}