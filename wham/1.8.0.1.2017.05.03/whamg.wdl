version 1.0

task Whamg {
  input {
    Boolean? string_list_include
    Boolean? string_comma_separated
    Boolean? string_reference_genome
    Boolean? flag_exits_program
    Boolean? string_file_write
    Boolean? string_region_format
    Boolean? int_mapping_filter
    Boolean? string_non_standard
    Boolean? flag_sample_reads
    Boolean? int_minimum_number
  }
  command <<<
    whamg \
      ~{true="-e" false="" string_list_include} \
      ~{true="-f" false="" string_comma_separated} \
      ~{true="-a" false="" string_reference_genome} \
      ~{true="-s" false="" flag_exits_program} \
      ~{true="-g" false="" string_file_write} \
      ~{true="-r" false="" string_region_format} \
      ~{true="-m" false="" int_mapping_filter} \
      ~{true="-i" false="" string_non_standard} \
      ~{true="-z" false="" flag_sample_reads} \
      ~{true="-d" false="" int_minimum_number}
  >>>
  parameter_meta {
    string_list_include: "<STRING>  A list of seqids to include or exclude while           sampling insert and depth.  For humans you should      use the standard chromosomes 1,2,3...X,Y.             "
    string_comma_separated: "<STRING>  Comma separated list of bam files or a file with     one bam (full path) per line.                       "
    string_reference_genome: "<STRING>  The reference genome (indexed fasta).               "
    flag_exits_program: "<FLAG>    Exits the program after the stats are                gathered. [false]                                   "
    string_file_write: "<STRING>  File to write graph to (very large output). [false] "
    string_region_format: "<STRING>  Region in format: seqid:start-end [whole genome]    "
    int_mapping_filter: "<INT>     Mapping quality filter [20].                        "
    string_non_standard: "<STRING>  non standard split read tag [SA]                    "
    flag_sample_reads: "<FLAG>    Sample reads until success. [false]                 "
    int_minimum_number: "<INT>     Minimum number of matching bases (both reads).[100] "
  }
}