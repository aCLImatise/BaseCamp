version 1.0

task Nanoblaster {
  input {
    Boolean? specify_one_parameters
    Boolean? specify_name_reference
    Boolean? specify_name_reads
    File? specify_prefix_output
    Boolean? specify_size_kmer
    Boolean? specify_size_anchor
    Boolean? specify_min_number
    Boolean? run_program_high
    Boolean? specify_number_aligned
    Boolean? specify_interval_length
    Boolean? configure_using_index
  }
  command <<<
    nanoblaster \
      ~{if (specify_one_parameters) then "-C" else ""} \
      ~{if (specify_name_reference) then "-r" else ""} \
      ~{if (specify_name_reads) then "-i" else ""} \
      ~{if (specify_prefix_output) then "-o" else ""} \
      ~{if (specify_size_kmer) then "-k" else ""} \
      ~{if (specify_size_anchor) then "-a" else ""} \
      ~{if (specify_min_number) then "-l" else ""} \
      ~{if (run_program_high) then "-s" else ""} \
      ~{if (specify_number_aligned) then "-n" else ""} \
      ~{if (specify_interval_length) then "-g" else ""} \
      ~{if (configure_using_index) then "-X" else ""}
  >>>
  parameter_meta {
    specify_one_parameters: ": To specify one of the Parameters: -C10, -C25, or -C50"
    specify_name_reference: ": To specify the name of Reference file"
    specify_name_reads: ": To specify the name of Reads file"
    specify_prefix_output: ": To specify the prefix of Output file"
    specify_size_kmer: ": To specify the size of KMER"
    specify_size_anchor: ": To specify the size of ANCHOR"
    specify_min_number: ": To specify the min number of Clusters"
    run_program_high: ": To run the program in high sensitive mode"
    specify_number_aligned: ": To specify the Number of reads to be aligned"
    specify_interval_length: ": To specify the interval (or Gap) length between KMERs"
    configure_using_index: ": To configure NanoBLASTer for less memory using Single index"
  }
  output {
    File out_stdout = stdout()
    File out_specify_prefix_output = "${in_specify_prefix_output}"
  }
}