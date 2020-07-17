version 1.0

task SeqPrep {
  input {
    String? help_message_works
    String? sequence_phred_rather
    Boolean? quality_score_cutoff
    Boolean? minimum_length_print
    Boolean? forward_read_sequence
    Boolean? reverse_read_sequence
    Boolean? minimum_overall_base_pair_overlap_trim
    Boolean? for_primeradapter_default
    Boolean? minimum_fraction_matching_bases_primeradapter
    Boolean? adapter_alignment_bandwidth
    Boolean? adapter_alignment_gapopen
    Boolean? adapter_alignment_gapextension
    Boolean? adapter_alignment_default
    Boolean? adapter_alignment_minimum
    Boolean? read_alignment_bandwidth_default
    Boolean? read_alignment_gapopen_default
    Boolean? read_gapextension_default
    Boolean? read_alignment_gapend_default
    Boolean? read_alignment_maximum_default
    Boolean? use_mask_n
    Boolean? max_number_provided
    Boolean? minimum_overall_base_pair_overlap_merge
    Boolean? maximum_fraction_to
    Boolean? minimum_fraction_matching_bases_overlap
    String? required
    String? args
  }
  command <<<
    SeqPrep \
      ~{required} \
      ~{args} \
      ~{if defined(help_message_works) then ("-h " +  '"' + help_message_works + '"') else ""} \
      ~{if defined(sequence_phred_rather) then ("-6 " +  '"' + sequence_phred_rather + '"') else ""} \
      ~{true="-q" false="" quality_score_cutoff} \
      ~{true="-L" false="" minimum_length_print} \
      ~{true="-A" false="" forward_read_sequence} \
      ~{true="-B" false="" reverse_read_sequence} \
      ~{true="-O" false="" minimum_overall_base_pair_overlap_trim} \
      ~{true="-M" false="" for_primeradapter_default} \
      ~{true="-N" false="" minimum_fraction_matching_bases_primeradapter} \
      ~{true="-b" false="" adapter_alignment_bandwidth} \
      ~{true="-Q" false="" adapter_alignment_gapopen} \
      ~{true="-t" false="" adapter_alignment_gapextension} \
      ~{true="-e" false="" adapter_alignment_default} \
      ~{true="-Z" false="" adapter_alignment_minimum} \
      ~{true="-w" false="" read_alignment_bandwidth_default} \
      ~{true="-W" false="" read_alignment_gapopen_default} \
      ~{true="-p" false="" read_gapextension_default} \
      ~{true="-P" false="" read_alignment_gapend_default} \
      ~{true="-X" false="" read_alignment_maximum_default} \
      ~{true="-z" false="" use_mask_n} \
      ~{true="-x" false="" max_number_provided} \
      ~{true="-o" false="" minimum_overall_base_pair_overlap_merge} \
      ~{true="-m" false="" maximum_fraction_to} \
      ~{true="-n" false="" minimum_fraction_matching_bases_overlap}
  >>>
  parameter_meta {
    help_message_works: "this help message and exit (also works with no args) "
    sequence_phred_rather: "sequence is in phred+64 rather than phred+33 format, the output will still be phred+33 "
    quality_score_cutoff: "<Quality score cutoff for mismatches to be counted in overlap; default = 13>"
    minimum_length_print: "<Minimum length of a trimmed or merged read to print it; default = 30>"
    forward_read_sequence: "<forward read primer/adapter sequence to trim as it would appear at the end of a read (recommend about 20bp of this) (should validate by grepping a file); default (genomic non-multiplexed adapter1) = AGATCGGAAGAGCACACGTC>"
    reverse_read_sequence: "<reverse read primer/adapter sequence to trim as it would appear at the end of a read (recommend about 20bp of this) (should validate by grepping a file); default (genomic non-multiplexed adapter2) = AGATCGGAAGAGCGTCGTGT>"
    minimum_overall_base_pair_overlap_trim: "<minimum overall base pair overlap with adapter sequence to trim; default = 10>"
    for_primeradapter_default: "<maximum fraction of good quality mismatching bases for primer/adapter overlap; default = 0.020000>"
    minimum_fraction_matching_bases_primeradapter: "<minimum fraction of matching bases for primer/adapter overlap; default = 0.870000>"
    adapter_alignment_bandwidth: "<adapter alignment band-width; default = 50>"
    adapter_alignment_gapopen: "<adapter alignment gap-open; default = 8>"
    adapter_alignment_gapextension: "<adapter alignment gap-extension; default = 2>"
    adapter_alignment_default: "<adapter alignment gap-end; default = 2>"
    adapter_alignment_minimum: "<adapter alignment minimum local alignment score cutoff [roughly (2*num_hits) - (num_gaps*gap_open) - (num_gaps*gap_close) - (gap_len*gap_extend) - (2*num_mismatches)]; default = 26>"
    read_alignment_bandwidth_default: "<read alignment band-width; default = 50>"
    read_alignment_gapopen_default: "<read alignment gap-open; default = 26>"
    read_gapextension_default: "<read alignment gap-extension; default = 9>"
    read_alignment_gapend_default: "<read alignment gap-end; default = 5>"
    read_alignment_maximum_default: "<read alignment maximum fraction gap cutoff; default = 0.125000>"
    use_mask_n: "<use mask; N will replace adapters>"
    max_number_provided: "<max number of pretty alignments to write (if -E provided); default = 10000>"
    minimum_overall_base_pair_overlap_merge: "<minimum overall base pair overlap to merge two reads; default = 15>"
    maximum_fraction_to: "<maximum fraction of good quality mismatching bases to overlap reads; default = 0.020000>"
    minimum_fraction_matching_bases_overlap: "<minimum fraction of matching bases to overlap reads; default = 0.900000>"
    required: ""
    args: ""
  }
}