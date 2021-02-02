version 1.0

task Whamg {
  input {
    Boolean? string_list_include
    Boolean? string_comma_separated
    Boolean? string_reference_genome
    Boolean? flag_exits_program
    File? string_file_write
    Boolean? string_region_format
    Boolean? int_mapping_quality
    Boolean? string_non_standard
    Boolean? flag_sample_reads
    Boolean? int_minimum_number
  }
  command <<<
    whamg \
      ~{if (string_list_include) then "-e" else ""} \
      ~{if (string_comma_separated) then "-f" else ""} \
      ~{if (string_reference_genome) then "-a" else ""} \
      ~{if (flag_exits_program) then "-s" else ""} \
      ~{if (string_file_write) then "-g" else ""} \
      ~{if (string_region_format) then "-r" else ""} \
      ~{if (int_mapping_quality) then "-m" else ""} \
      ~{if (string_non_standard) then "-i" else ""} \
      ~{if (flag_sample_reads) then "-z" else ""} \
      ~{if (int_minimum_number) then "-d" else ""}
  >>>
  parameter_meta {
    string_list_include: "<STRING>  A list of seqids to include or exclude while\\nsampling insert and depth.  For humans you should\\nuse the standard chromosomes 1,2,3...X,Y."
    string_comma_separated: "<STRING>  Comma separated list of bam files or a file with\\none bam (full path) per line."
    string_reference_genome: "<STRING>  The reference genome (indexed fasta)."
    flag_exits_program: "<FLAG>    Exits the program after the stats are\\ngathered. [false]"
    string_file_write: "<STRING>  File to write graph to (very large output). [false]"
    string_region_format: "<STRING>  Region in format: seqid:start-end [whole genome]"
    int_mapping_quality: "<INT>     Mapping quality filter [20]."
    string_non_standard: "<STRING>  non standard split read tag [SA]"
    flag_sample_reads: "<FLAG>    Sample reads until success. [false]"
    int_minimum_number: "<INT>     Minimum number of matching bases (both reads).[100]"
  }
  output {
    File out_stdout = stdout()
    File out_string_file_write = "${in_string_file_write}"
  }
}