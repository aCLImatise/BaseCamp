version 1.0

task IgdiscoverMerge {
  input {
    Int? threads
    Boolean? no_cache
    Int reads_one
    Int reads_two
    String output_file_compressed
  }
  command <<<
    igdiscover merge \
      ~{reads_one} \
      ~{reads_two} \
      ~{output_file_compressed} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_cache) then "--no-cache" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads"
    no_cache: "Disable cache. Default: Determined by configuration"
    reads_one: "Forward reads FASTQ file"
    reads_two: "Reverse reads FASTQ file"
    output_file_compressed: "Output file (compressed FASTQ)"
  }
  output {
    File out_stdout = stdout()
  }
}