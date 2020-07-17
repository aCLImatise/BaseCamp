version 1.0

task BedtoolsSpacing {
  input {
    Boolean? bed
    String? header
    Boolean? no_buf
    Boolean? i_obuf
    String? i
  }
  command <<<
    bedtools spacing \
      ~{true="-bed" false="" bed} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{true="-nobuf" false="" no_buf} \
      ~{true="-iobuf" false="" i_obuf} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line of output to be printed as it is generated, rather than saved in a buffer. This will make printing large output files  noticeably slower, but can be useful in conjunction with other software tools and scripts that need to process one line of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer. Takes an integer argument. Optional suffixes K/M/G supported. Note: currently has no effect with compressed files."
    i: ""
  }
}