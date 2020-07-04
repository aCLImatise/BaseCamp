version 1.0

task SampleReadsRandomly.py {
  input {
    Boolean? force
    Boolean? gzip
    Boolean? bzip
    Boolean? info
    String? n
  }
  command <<<
    sample-reads-randomly.py \
      ~{true="--force" false="" force} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip} \
      ~{true="--info" false="" info} \
      ~{if defined(n) then ("-N " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    force: "Overwrite output file if it exits (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    info: ""
    n: ""
  }
}