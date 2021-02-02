version 1.0

task GenFm9 {
  input {
    File? fast_q
    Boolean? multi_fast_a
    File? outputfile_print_option
    Int? size
  }
  command <<<
    genFm9 \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{if (multi_fast_a) then "-multiFasta" else ""} \
      ~{if defined(outputfile_print_option) then ("-output " +  '"' + outputfile_print_option + '"') else ""} \
      ~{if defined(size) then ("-size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    fast_q: "file is in a fastq format"
    multi_fast_a: "FILE  with all the reads"
    outputfile_print_option: "for the output-file  if print option was selected (default output)"
    size: "of reads to generate the FM9 (default all dataset)"
  }
  output {
    File out_stdout = stdout()
    File out_outputfile_print_option = "${in_outputfile_print_option}"
  }
}