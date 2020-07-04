version 1.0

task Coloraln.pl {
  input {
    File? read_file_extract
    String? break_alignments_blocks
    Boolean? suppress_conversion_of
    Boolean? add_alignment_showing
    Boolean? write_sequence_position
    File filed_otal_n
  }
  command <<<
    coloraln.pl \
      ~{filed_otal_n} \
      ~{if defined(read_file_extract) then ("-s " +  '"' + read_file_extract + '"') else ""} \
      ~{if defined(break_alignments_blocks) then ("-c " +  '"' + break_alignments_blocks + '"') else ""} \
      ~{true="-t" false="" suppress_conversion_of} \
      ~{true="-r" false="" add_alignment_showing} \
      ~{true="-n" false="" write_sequence_position}
  >>>
  parameter_meta {
    read_file_extract: "read file to extract the consensus structure (default: \"alirna.ps\")"
    break_alignments_blocks: "break alignments into blocks of at most width columns, (default: 120)"
    suppress_conversion_of: "suppress conversion of \"T\" to \"U\", i.e. do not convert DNA to RNA, (default: convert to \"U\")"
    add_alignment_showing: "add a \"ruler\" below the alignment showing sequence positions"
    write_sequence_position: "write sequence position at the end of each sequence line"
    filed_otal_n: ""
  }
}