version 1.0

task FastenClean {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Int? min_length
    Float? min_avg_quality
    Int? min_trim_quality
  }
  command <<<
    fasten_clean \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_avg_quality) then ("--min-avg-quality " +  '"' + min_avg_quality + '"') else ""} \
      ~{if defined(min_trim_quality) then ("--min-trim-quality " +  '"' + min_trim_quality + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    min_length: "Minimum length for each read in bp"
    min_avg_quality: "Minimum average quality for each read"
    min_trim_quality: "Trim the edges of each read until a nucleotide of at least X quality is found"
  }
}