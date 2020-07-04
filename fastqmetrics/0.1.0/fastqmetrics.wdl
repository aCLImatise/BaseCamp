version 1.0

task Fastqmetrics {
  input {
    String? threads
    Boolean? v
    String fast_q
  }
  command <<<
    fastqmetrics \
      ~{fast_q} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    threads: "Set the allowed number of threads to be used by the script. This only applies to bam and fastq format as data source"
    v: ""
    fast_q: "Fastq file to extract features from."
  }
}