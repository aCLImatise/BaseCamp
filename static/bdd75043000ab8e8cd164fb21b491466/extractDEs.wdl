version 1.0

task ExtractDEs {
  input {
    Boolean? write_output_omitted
    Boolean? regions
    Boolean? mapper
    Boolean? tech
    Boolean? verbose
    Boolean? about
    String mapped_reads
  }
  command <<<
    extractDEs \
      ~{mapped_reads} \
      ~{true="-output" false="" write_output_omitted} \
      ~{true="-regions" false="" regions} \
      ~{true="-mapper" false="" mapper} \
      ~{true="-tech" false="" tech} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    write_output_omitted: "Write output to this file (STDOUT if omitted). "
    regions: "the genomic regions, in BED format, corresponding to the input  sequences for Zagros. "
    mapper: "the mapper used to map the reads (Default: rmap) "
    tech: "the technology type used in the experiment (default iCLIP) "
    verbose: "print more run info (default: false "
    about: "print about message "
    mapped_reads: ""
  }
}