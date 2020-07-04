version 1.0

task SplitPairedReads.py {
  input {
    Boolean? info
    String? output_dir
    String? output_orphaned
    String? output_first
    String? output_second
    Boolean? force
    Boolean? gzip
    Boolean? bzip
  }
  command <<<
    split-paired-reads.py \
      ~{true="--info" false="" info} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_orphaned) then ("--output-orphaned " +  '"' + output_orphaned + '"') else ""} \
      ~{if defined(output_first) then ("--output-first " +  '"' + output_first + '"') else ""} \
      ~{if defined(output_second) then ("--output-second " +  '"' + output_second + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip}
  >>>
  parameter_meta {
    info: "print citation information"
    output_dir: "Output split reads to specified directory. Creates directory if necessary (default: )"
    output_orphaned: "Allow \"orphaned\" reads and extract them to this file (default: None)"
    output_first: "Output \"left\" reads to this file (default: None)"
    output_second: "Output \"right\" reads to this file (default: None)"
    force: "Overwrite output file if it exists (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
  }
}