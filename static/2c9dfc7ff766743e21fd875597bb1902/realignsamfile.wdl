version 1.0

task Realignsamfile {
  input {
    String? elongation
    String? filter_circular_reads
    String? input_sambam_file
    String? reference
    String? filter_non_circular_sequences
    String realigns_am_file_v_one_dot_zero
  }
  command <<<
    realignsamfile \
      ~{realigns_am_file_v_one_dot_zero} \
      ~{if defined(elongation) then ("--elongation " +  '"' + elongation + '"') else ""} \
      ~{if defined(filter_circular_reads) then ("--filterCircularReads " +  '"' + filter_circular_reads + '"') else ""} \
      ~{if defined(input_sambam_file) then ("--input " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(filter_non_circular_sequences) then ("--filterNonCircularSequences " +  '"' + filter_non_circular_sequences + '"') else ""}
  >>>
  parameter_meta {
    elongation: "the elongation factor [INT]"
    filter_circular_reads: "filter the reads that don't map to a circular identifier (true/false), default false"
    input_sambam_file: "the input SAM/BAM File"
    reference: "the unmodified reference genome"
    filter_non_circular_sequences: "filter the sequence identifiers that are not circular identifiers (true/false), default false"
    realigns_am_file_v_one_dot_zero: ""
  }
}