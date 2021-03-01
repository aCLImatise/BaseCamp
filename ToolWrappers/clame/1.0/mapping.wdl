version 1.0

task Mapping {
  input {
    Int? number_take_default
    Int? fm_nine
    File? fast_q
    File? list_two_exclude
    Boolean? multi_fast_a
    Int? nt
    Int? offset_fm_nine
    File? outputfile_print_option
    File? print
    Int? size
    Int? total_reads
    Int? offset_start_alignemnt
  }
  command <<<
    mapping \
      ~{if defined(number_take_default) then ("-b " +  '"' + number_take_default + '"') else ""} \
      ~{if defined(fm_nine) then ("-fm9 " +  '"' + fm_nine + '"') else ""} \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(list_two_exclude) then ("-list2Exclude " +  '"' + list_two_exclude + '"') else ""} \
      ~{if (multi_fast_a) then "-multiFasta" else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(offset_fm_nine) then ("-offsetFM9 " +  '"' + offset_fm_nine + '"') else ""} \
      ~{if defined(outputfile_print_option) then ("-output " +  '"' + outputfile_print_option + '"') else ""} \
      ~{if defined(print) then ("-print " +  '"' + print + '"') else ""} \
      ~{if defined(size) then ("-size " +  '"' + size + '"') else ""} \
      ~{if defined(total_reads) then ("-totalReads " +  '"' + total_reads + '"') else ""} \
      ~{if defined(offset_start_alignemnt) then ("-w " +  '"' + offset_start_alignemnt + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_take_default: "number of bases to take an alignment (default 20)"
    fm_nine: "fm9 file"
    fast_q: "file is in a fastq format"
    list_two_exclude: "with sequeces to exclude of the Aligment"
    multi_fast_a: "FILE  with all the reads"
    nt: "of threads to use (default 1)"
    offset_fm_nine: "use several FM9 indexes (default 0)"
    outputfile_print_option: "for the output-file  if print option was selected (default output)"
    print: "the result file (default false)"
    size: "for the block aligment (default all dataset)"
    total_reads: "of reads to exclude from list2Exclude"
    offset_start_alignemnt: "offset to start the alignemnt (default 0)"
  }
  output {
    File out_stdout = stdout()
    File out_outputfile_print_option = "${in_outputfile_print_option}"
  }
}