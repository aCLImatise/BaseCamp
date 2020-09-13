version 1.0

task Soap {
  input {
    Boolean? str_query_file
    Boolean? str_query_b
    Boolean? str_reference_sequences
    File? str_output_alignment
    Boolean? int_match_mode
    File? str_output_unmapped
    Boolean? output_reads_reads
    Boolean? int_align_bps
    Boolean? int_filter_lowquality
    Boolean? var_9
    Boolean? int_minimal_insert
    Boolean? int_maximal_insert
    File? str_output_file
    Boolean? int_maximum_number
    Boolean? int_minimal_alignment
    Boolean? int_one_continuous
    Boolean? long_insert_size
    Boolean? int_will_allow
    Boolean? int_number_processors
    String soap_at_genomics_dot_org_dot_cn
  }
  command <<<
    soap \
      ~{soap_at_genomics_dot_org_dot_cn} \
      ~{if (str_query_file) then "-a" else ""} \
      ~{if (str_query_b) then "-b" else ""} \
      ~{if (str_reference_sequences) then "-D" else ""} \
      ~{if (str_output_alignment) then "-o" else ""} \
      ~{if (int_match_mode) then "-M" else ""} \
      ~{if (str_output_unmapped) then "-u" else ""} \
      ~{if (output_reads_reads) then "-t" else ""} \
      ~{if (int_align_bps) then "-l" else ""} \
      ~{if (int_filter_lowquality) then "-n" else ""} \
      ~{if (var_9) then "-r" else ""} \
      ~{if (int_minimal_insert) then "-m" else ""} \
      ~{if (int_maximal_insert) then "-x" else ""} \
      ~{if (str_output_file) then "-2" else ""} \
      ~{if (int_maximum_number) then "-v" else ""} \
      ~{if (int_minimal_alignment) then "-s" else ""} \
      ~{if (int_one_continuous) then "-g" else ""} \
      ~{if (long_insert_size) then "-R" else ""} \
      ~{if (int_will_allow) then "-e" else ""} \
      ~{if (int_number_processors) then "-p" else ""}
  >>>
  parameter_meta {
    str_query_file: "<str>   query a file, *.fq, *.fa"
    str_query_b: "<str>   query b file"
    str_reference_sequences: "<str>   reference sequences indexing table, *.index format"
    str_output_alignment: "<str>   output alignment file(txt)"
    int_match_mode: "<int>   match mode for each read or the seed part of read, which shouldn't contain more than 2 mismaches, [4]\\n0: exact match only\\n1: 1 mismatch match only\\n2: 2 mismatch match only\\n4: find the best hits"
    str_output_unmapped: "<str>   output unmapped reads file"
    output_reads_reads: "output reads id instead reads name, [none]"
    int_align_bps: "<int>   align the initial n bps as a seed [256] means whole length of read"
    int_filter_lowquality: "<int>   filter low-quality reads containing >n Ns before alignment, [5]"
    var_9: "[0,1,2] how to report repeat hits, 0=none; 1=random one; 2=all, [1]"
    int_minimal_insert: "<int>   minimal insert size allowed, [400]"
    int_maximal_insert: "<int>   maximal insert size allowed, [600]"
    str_output_file: "<str>   output file of unpaired alignment hits"
    int_maximum_number: "<int>   maximum number of mismatches allowed on a read. [5] bp"
    int_minimal_alignment: "<int>   minimal alignment length (for soft clip) [255] bp"
    int_one_continuous: "<int>   one continuous gap size allowed on a read. [0] bp"
    long_insert_size: "for long insert size of pair end reads RF. [none](means FR pair)"
    int_will_allow: "<int>   will not allow gap exist inside n-bp edge of a read, default=5"
    int_number_processors: "<int>   number of processors to use, [1]"
    soap_at_genomics_dot_org_dot_cn: "Usage:  soap [options]"
  }
  output {
    File out_stdout = stdout()
    File out_str_output_alignment = "${in_str_output_alignment}"
    File out_str_output_unmapped = "${in_str_output_unmapped}"
    File out_str_output_file = "${in_str_output_file}"
  }
}