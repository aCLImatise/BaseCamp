version 1.0

task Realignsamfile {
  input {
    String? filter_circular_reads
    String? the_input_sambam
    String? filter_non_circular_sequences
    Float realigns_am_file_v_one_dot_zero
    File file
  }
  command <<<
    realignsamfile \
      ~{realigns_am_file_v_one_dot_zero} \
      ~{file} \
      ~{if defined(filter_circular_reads) then ("--filterCircularReads " +  '"' + filter_circular_reads + '"') else ""} \
      ~{if defined(the_input_sambam) then ("--input " +  '"' + the_input_sambam + '"') else ""} \
      ~{if defined(filter_non_circular_sequences) then ("--filterNonCircularSequences " +  '"' + filter_non_circular_sequences + '"') else ""}
  >>>
  parameter_meta {
    filter_circular_reads: "filter the reads\\nthat don't map to a\\ncircular identifier\\n(true/false),\\ndefault false"
    the_input_sambam: "the input SAM/BAM"
    filter_non_circular_sequences: "filter the sequence\\nidentifiers that\\nare not circular\\nidentifiers\\n(true/false),\\ndefault false\\n"
    realigns_am_file_v_one_dot_zero: "-e,--elongation <ELONGATION>                          the elongation\\nfactor [INT]"
    file: "-r,--reference <REFERENCE>                            the unmodified"
  }
  output {
    File out_stdout = stdout()
  }
}