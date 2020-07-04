version 1.0

task BedtoolsSample {
  input {
    Boolean? number_generate_default
    Boolean? seed
    Boolean? ub_am
    Boolean? require_same_strandedness
    String? header
    Boolean? bed
    Boolean? no_buf
    Boolean? i_obuf
    String? i
  }
  command <<<
    bedtools sample \
      ~{true="-n" false="" number_generate_default} \
      ~{true="-seed" false="" seed} \
      ~{true="-ubam" false="" ub_am} \
      ~{true="-s" false="" require_same_strandedness} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{true="-bed" false="" bed} \
      ~{true="-nobuf" false="" no_buf} \
      ~{true="-iobuf" false="" i_obuf} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    number_generate_default: "The number of records to generate. - Default = 1,000,000. - (INTEGER)"
    seed: "Supply an integer seed for the shuffling. - By default, the seed is chosen automatically. - (INTEGER)"
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    require_same_strandedness: "Require same strandedness.  That is, only give records that have the same strand. Use '-s forward' or '-s reverse' for forward or reverse strand records, respectively. - By default, records are reported without respect to strand."
    header: "the header from the input file prior to results."
    bed: "If using BAM input, write output as BED."
    no_buf: "Disable buffered output. Using this option will cause each line of output to be printed as it is generated, rather than saved in a buffer. This will make printing large output files  noticeably slower, but can be useful in conjunction with other software tools and scripts that need to process one line of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer. Takes an integer argument. Optional suffixes K/M/G supported. Note: currently has no effect with compressed files."
    i: ""
  }
}