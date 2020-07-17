version 1.0

task PhyluceProbeGetGenomeSequencesFromBed {
  input {
    String? bed
    String? two_bit
    String? output_fasta_file
    String? filter_mask
    Int? max_n
    String? buffer_to
  }
  command <<<
    phyluce_probe_get_genome_sequences_from_bed \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(two_bit) then ("--twobit " +  '"' + two_bit + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(filter_mask) then ("--filter-mask " +  '"' + filter_mask + '"') else ""} \
      ~{if defined(max_n) then ("--max-n " +  '"' + max_n + '"') else ""} \
      ~{if defined(buffer_to) then ("--buffer-to " +  '"' + buffer_to + '"') else ""}
  >>>
  parameter_meta {
    bed: "The input BED file"
    two_bit: "The input genome to slice in UCSC 2bit format"
    output_fasta_file: "The output fasta file"
    filter_mask: "Filter strings with > X frequency of masked bases"
    max_n: "The maximum number of ambiguous bases ('N') to accept"
    buffer_to: "The length to which to buffer the extracted sequences"
  }
}