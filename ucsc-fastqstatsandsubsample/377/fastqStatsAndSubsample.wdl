version 1.0

task FastqStatsAndSubsample {
  input {
    Int? sample_size
    Int? seed
    Boolean? small_ok
    Boolean? json
    String in_dot_fast_q
    String out_dot_stats
  }
  command <<<
    fastqStatsAndSubsample \
      ~{in_dot_fast_q} \
      ~{out_dot_stats} \
      ~{if defined(sample_size) then ("-sampleSize " +  '"' + sample_size + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if (small_ok) then "-smallOk" else ""} \
      ~{if (json) then "-json" else ""}
  >>>
  parameter_meta {
    sample_size: "- default 100000"
    seed: "- Use given seed for random number generator.  Default 0."
    small_ok: "- Not an error if less than sampleSize reads.  out.fastq will be entire in.fastq"
    json: "- out.stats will be in json rather than text format"
    in_dot_fast_q: ""
    out_dot_stats: ""
  }
  output {
    File out_stdout = stdout()
  }
}