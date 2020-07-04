version 1.0

task GenFm9 {
  input {
    String? fast_q
    Boolean? multi_fast_a
    String? outputfile_print_option
    String? size
  }
  command <<<
    genFm9 \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{true="-multiFasta" false="" multi_fast_a} \
      ~{if defined(outputfile_print_option) then ("-output " +  '"' + outputfile_print_option + '"') else ""} \
      ~{if defined(size) then ("-size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    fast_q: "file is in a fastq format  "
    multi_fast_a: "FILE  with all the reads "
    outputfile_print_option: "for the output-file  if print option was selected (default output)"
    size: "of reads to generate the FM9 (default all dataset)"
  }
}