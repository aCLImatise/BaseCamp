version 1.0

task Soap {
  input {
    Boolean? str_query_file
    Boolean? str_query_b
    Boolean? str_reference_sequences
    Boolean? str_output_alignment
    Boolean? int_match_mode
    Boolean? str_output_unmapped
    Boolean? output_reads_reads
    Boolean? int_align_bps
    Boolean? int_filter_lowquality
    Boolean? var_9
    Boolean? int_minimal_insert
    Boolean? int_maximal_insert
    Boolean? str_output_file
    Boolean? int_maximum_number
    Boolean? int_minimal_length
    Boolean? int_one_continuous
    Boolean? long_insert_size
    Boolean? int_will_allow
    Boolean? int_number_processors
  }
  command <<<
    soap \
      ~{true="-a" false="" str_query_file} \
      ~{true="-b" false="" str_query_b} \
      ~{true="-D" false="" str_reference_sequences} \
      ~{true="-o" false="" str_output_alignment} \
      ~{true="-M" false="" int_match_mode} \
      ~{true="-u" false="" str_output_unmapped} \
      ~{true="-t" false="" output_reads_reads} \
      ~{true="-l" false="" int_align_bps} \
      ~{true="-n" false="" int_filter_lowquality} \
      ~{true="-r" false="" var_9} \
      ~{true="-m" false="" int_minimal_insert} \
      ~{true="-x" false="" int_maximal_insert} \
      ~{true="-2" false="" str_output_file} \
      ~{true="-v" false="" int_maximum_number} \
      ~{true="-s" false="" int_minimal_length} \
      ~{true="-g" false="" int_one_continuous} \
      ~{true="-R" false="" long_insert_size} \
      ~{true="-e" false="" int_will_allow} \
      ~{true="-p" false="" int_number_processors}
  >>>
  parameter_meta {
    str_query_file: "<str>   query a file, *.fq, *.fa"
    str_query_b: "<str>   query b file"
    str_reference_sequences: "<str>   reference sequences indexing table, *.index format"
    str_output_alignment: "<str>   output alignment file(txt)"
    int_match_mode: "<int>   match mode for each read or the seed part of read, which shouldn't contain more than 2 mismaches, [4] 0: exact match only 1: 1 mismatch match only 2: 2 mismatch match only 4: find the best hits"
    str_output_unmapped: "<str>   output unmapped reads file"
    output_reads_reads: "output reads id instead reads name, [none]"
    int_align_bps: "<int>   align the initial n bps as a seed [256] means whole length of read"
    int_filter_lowquality: "<int>   filter low-quality reads containing >n Ns before alignment, [5]"
    var_9: "[0,1,2] how to report repeat hits, 0=none; 1=random one; 2=all, [1]"
    int_minimal_insert: "<int>   minimal insert size allowed, [400]"
    int_maximal_insert: "<int>   maximal insert size allowed, [600]"
    str_output_file: "<str>   output file of unpaired alignment hits"
    int_maximum_number: "<int>   maximum number of mismatches allowed on a read. [5] bp"
    int_minimal_length: "<int>   minimal alignment length (for soft clip) [255] bp"
    int_one_continuous: "<int>   one continuous gap size allowed on a read. [0] bp"
    long_insert_size: "for long insert size of pair end reads RF. [none](means FR pair)"
    int_will_allow: "<int>   will not allow gap exist inside n-bp edge of a read, default=5"
    int_number_processors: "<int>   number of processors to use, [1]"
  }
}