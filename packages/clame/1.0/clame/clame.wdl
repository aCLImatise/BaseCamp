version 1.0

task Clame {
  input {
    Int? number_take_default
    Int? fm_nine
    File? fast_q
    Int? cut_points_comma
    Boolean? multi_fast_a
    Int? nt
    File? outputfile_print_option
    File? print
    Int? size_bin
  }
  command <<<
    clame \
      ~{if defined(number_take_default) then ("-b " +  '"' + number_take_default + '"') else ""} \
      ~{if defined(fm_nine) then ("-fm9 " +  '"' + fm_nine + '"') else ""} \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(cut_points_comma) then ("-e " +  '"' + cut_points_comma + '"') else ""} \
      ~{if (multi_fast_a) then "-multiFasta" else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(outputfile_print_option) then ("-output " +  '"' + outputfile_print_option + '"') else ""} \
      ~{if defined(print) then ("-print " +  '"' + print + '"') else ""} \
      ~{if defined(size_bin) then ("-sizeBin " +  '"' + size_bin + '"') else ""}
  >>>
  parameter_meta {
    number_take_default: "number of bases to take an alignment (default 70)"
    fm_nine: "fm9 file"
    fast_q: "file is in a fastq format"
    cut_points_comma: "of cut points (comma separator) for edges constrains (default 0,10000)"
    multi_fast_a: "FILE  with all the reads"
    nt: "of threads to use (default 1)"
    outputfile_print_option: "for the output-file  if print option was selected (default output)"
    print: "print output to file (default false)"
    size_bin: "number of reads to report a bin (default 1000)"
  }
  output {
    File out_stdout = stdout()
    File out_outputfile_print_option = "${in_outputfile_print_option}"
    File out_print = "${in_print}"
  }
}