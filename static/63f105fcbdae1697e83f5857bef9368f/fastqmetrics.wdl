version 1.0

task Fastqmetrics {
  input {
    Int? threads
    Boolean? v
    String fast_q
  }
  command <<<
    fastqmetrics \
      ~{fast_q} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    threads: "Set the allowed number of threads to be used by the\\nscript. This only applies to bam and fastq format as\\ndata source\\n"
    v: ""
    fast_q: "Fastq file to extract features from."
  }
  output {
    File out_stdout = stdout()
  }
}