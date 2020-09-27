version 1.0

task BedtoolsSample {
  input {
    Boolean? number_generate_default
    Boolean? seed
    Boolean? ub_am
    Boolean? require_same_strandedness
    File? header
    Boolean? bed
    Boolean? no_buf
    Boolean? i_obuf
    String? i
  }
  command <<<
    bedtools sample \
      ~{if (number_generate_default) then "-n" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (ub_am) then "-ubam" else ""} \
      ~{if (require_same_strandedness) then "-s" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (no_buf) then "-nobuf" else ""} \
      ~{if (i_obuf) then "-iobuf" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    number_generate_default: "The number of records to generate.\\n- Default = 1,000,000.\\n- (INTEGER)"
    seed: "Supply an integer seed for the shuffling.\\n- By default, the seed is chosen automatically.\\n- (INTEGER)"
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    require_same_strandedness: "Require same strandedness.  That is, only give records\\nthat have the same strand. Use '-s forward' or '-s reverse'\\nfor forward or reverse strand records, respectively.\\n- By default, records are reported without respect to strand."
    header: "the header from the input file prior to results."
    bed: "If using BAM input, write output as BED."
    no_buf: "Disable buffered output. Using this option will cause each line\\nof output to be printed as it is generated, rather than saved\\nin a buffer. This will make printing large output files\\nnoticeably slower, but can be useful in conjunction with\\nother software tools and scripts that need to process one\\nline of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer.\\nTakes an integer argument. Optional suffixes K/M/G supported.\\nNote: currently has no effect with compressed files."
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}