version 1.0

task HtsboxPeovlp {
  input {
    File? barcode_file_overriding
    Array[Int] barcode_length
    Int? number_of_threads
    Int? min_readfragment_length
    Int? min_overlap_length
    String? output_pe_reads
    Int? trim_intbp_end
    Boolean? output_paired_reads
    Boolean? tabular_output_debugging
    String seq_tk
    String merge_pe
    Int read_one_dot_fq
    Int read_two_dot_fq
  }
  command <<<
    htsbox peovlp \
      ~{seq_tk} \
      ~{merge_pe} \
      ~{read_one_dot_fq} \
      ~{read_two_dot_fq} \
      ~{if defined(barcode_file_overriding) then ("-b " +  '"' + barcode_file_overriding + '"') else ""} \
      ~{if defined(barcode_length) then ("-B " +  '"' + barcode_length + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(min_readfragment_length) then ("-l " +  '"' + min_readfragment_length + '"') else ""} \
      ~{if defined(min_overlap_length) then ("-o " +  '"' + min_overlap_length + '"') else ""} \
      ~{if defined(output_pe_reads) then ("-p " +  '"' + output_pe_reads + '"') else ""} \
      ~{if defined(trim_intbp_end) then ("-T " +  '"' + trim_intbp_end + '"') else ""} \
      ~{if (output_paired_reads) then "-P" else ""} \
      ~{if (tabular_output_debugging) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    barcode_file_overriding: "barcode file (overriding -B) []"
    barcode_length: "barcode length [0,0]"
    number_of_threads: "number of threads [2]"
    min_readfragment_length: "min read/fragment length to output [0]"
    min_overlap_length: "min overlap length [15]"
    output_pe_reads: "output PE reads to STR.R[12].fq.gz (overriding -P) [discard pe]"
    trim_intbp_end: "trim INT-bp from 5'-end [0]"
    output_paired_reads: "output paired reads also to stdout [discard pe]"
    tabular_output_debugging: "tabular output for debugging"
    seq_tk: ""
    merge_pe: ""
    read_one_dot_fq: ""
    read_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}