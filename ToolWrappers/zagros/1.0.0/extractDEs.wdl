version 1.0

task ExtractDEs {
  input {
    File? write_output_omitted
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
      ~{if (write_output_omitted) then "-output" else ""} \
      ~{if (regions) then "-regions" else ""} \
      ~{if (mapper) then "-mapper" else ""} \
      ~{if (tech) then "-tech" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_output_omitted: "Write output to this file (STDOUT if omitted)."
    regions: "the genomic regions, in BED format, corresponding to the input\\nsequences for Zagros."
    mapper: "the mapper used to map the reads (Default: rmap)"
    tech: "the technology type used in the experiment (default iCLIP)"
    verbose: "print more run info (default: false"
    about: "print about message"
    mapped_reads: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_omitted = "${in_write_output_omitted}"
  }
}