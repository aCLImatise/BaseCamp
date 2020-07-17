version 1.0

task ExtractPairedReads.py {
  input {
    Boolean? info
    String? output_dir
    File? output_paired
    File? output_single
    Boolean? force
    Boolean? gzip
    Boolean? bzip
  }
  command <<<
    extract-paired-reads.py \
      ~{true="--info" false="" info} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_paired) then ("--output-paired " +  '"' + output_paired + '"') else ""} \
      ~{if defined(output_single) then ("--output-single " +  '"' + output_single + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip}
  >>>
  parameter_meta {
    info: "print citation information"
    output_dir: "Output split reads to specified directory. Creates directory if necessary (default: )"
    output_paired: "Output paired reads to this file (default: None)"
    output_single: "Output orphaned reads to this file (default: None)"
    force: "Overwrite output file if it exists (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
  }
}