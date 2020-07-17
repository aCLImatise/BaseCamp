version 1.0

task InterleaveReads.py {
  input {
    Boolean? no_reformat
    Boolean? force
    Boolean? gzip
    Boolean? bzip
    Boolean? info
    File? o
  }
  command <<<
    interleave-reads.py \
      ~{true="--no-reformat" false="" no_reformat} \
      ~{true="--force" false="" force} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip} \
      ~{true="--info" false="" info} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    no_reformat: "Do not reformat read names or enforce consistency (default: False)"
    force: "Overwrite output file if it exists (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    info: ""
    o: ""
  }
}