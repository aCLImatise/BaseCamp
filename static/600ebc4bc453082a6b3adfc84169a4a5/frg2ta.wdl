version 1.0

task Frg2ta {
  input {
    Boolean? check
    Boolean? min_seq
    String? output_prefix
    Boolean? filter
    Boolean? no_qual
    Boolean? quali_dx
    Boolean? mates
    Boolean? no_names
    Boolean? prints_version_information
  }
  command <<<
    frg2ta \
      ~{if (check) then "-check" else ""} \
      ~{if (min_seq) then "-minseq" else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (no_qual) then "-noqual" else ""} \
      ~{if (quali_dx) then "-qualidx" else ""} \
      ~{if (mates) then "-mates" else ""} \
      ~{if (no_names) then "-nonames" else ""} \
      ~{if (prints_version_information) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check: "Prints out those seqnames that are shorter than MINSEQ"
    min_seq: "sets MINSEQ.  Default is 64"
    output_prefix: "Output prefix"
    filter: "filters the .frg file for sequences shorter than MINSEQ"
    no_qual: "doesnt create .qual file"
    quali_dx: "creates an index for the qual file [needed by cutAsm]"
    mates: "creates a .mates file indicating which sequences are mates"
    no_names: "Uses Ids rather than trying to figure out seqnames"
    prints_version_information: "Prints version information"
  }
  output {
    File out_stdout = stdout()
  }
}