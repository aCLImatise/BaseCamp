version 1.0

task TrimLowAbund.py {
  input {
    Boolean? ignore_pairs
    String? tempdir
    Boolean? gzip
    Boolean? bzip
    Boolean? digi_norm
    String? digi_norm_coverage
    Boolean? single_pass
    Boolean? info
    String? k
  }
  command <<<
    trim-low-abund.py \
      ~{true="--ignore-pairs" false="" ignore_pairs} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip} \
      ~{true="--diginorm" false="" digi_norm} \
      ~{if defined(digi_norm_coverage) then ("--diginorm-coverage " +  '"' + digi_norm_coverage + '"') else ""} \
      ~{true="--single-pass" false="" single_pass} \
      ~{true="--info" false="" info} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    ignore_pairs: "treat all reads as if they were singletons (default: False)"
    tempdir: "Set location of temporary directory for second pass (default: ./)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    digi_norm: "Eliminate high-coverage reads altogether (digital normalization). (default: False)"
    digi_norm_coverage: "Coverage threshold for --diginorm (default: 20)"
    single_pass: "Do not do a second pass across the low coverage data (default: False)"
    info: ""
    k: ""
  }
}