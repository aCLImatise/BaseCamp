version 1.0

task SeqPrep {
  input {
    String? the_spinner
    File? help_message_exit
    Int? sequence_phred_format
    Boolean? quality_score_cutoff
    Boolean? minimum_length_trimmed
    Boolean? forward_read_sequence
    Boolean? reverse_read_sequence
    Boolean? minimum_overall_base_pair_overlap_trim
    Boolean? maximum_fraction_for
    Boolean? minimum_fraction_matching
    Boolean? adapter_alignment_bandwidth_default
    Boolean? adapter_alignment_gapopen
    Boolean? adapter_alignment_gapextension
    Boolean? adapter_alignment_gapend_default
    Boolean? adapter_alignment_minimum
    Boolean? read_alignment_bandwidth_default
    Boolean? read_alignment_gapopen
    Boolean? read_alignment_gapextension_default
    Boolean? read_alignment_gapend
    Boolean? read_alignment_maximum
    Boolean? use_mask_n
    Boolean? maximum_quality_score
    Boolean? print_overhang_are
    File? max_number_write
    Boolean? minimum_overall_base_pair_overlap_merge
    Boolean? maximum_fraction_to
    Boolean? minimum_fraction_overlap
    String? required
    String? args
  }
  command <<<
    SeqPrep \
      ~{required} \
      ~{args} \
      ~{if defined(the_spinner) then ("-S " +  '"' + the_spinner + '"') else ""} \
      ~{if defined(help_message_exit) then ("-3 " +  '"' + help_message_exit + '"') else ""} \
      ~{if defined(sequence_phred_format) then ("-6 " +  '"' + sequence_phred_format + '"') else ""} \
      ~{if (quality_score_cutoff) then "-q" else ""} \
      ~{if (minimum_length_trimmed) then "-L" else ""} \
      ~{if (forward_read_sequence) then "-A" else ""} \
      ~{if (reverse_read_sequence) then "-B" else ""} \
      ~{if (minimum_overall_base_pair_overlap_trim) then "-O" else ""} \
      ~{if (maximum_fraction_for) then "-M" else ""} \
      ~{if (minimum_fraction_matching) then "-N" else ""} \
      ~{if (adapter_alignment_bandwidth_default) then "-b" else ""} \
      ~{if (adapter_alignment_gapopen) then "-Q" else ""} \
      ~{if (adapter_alignment_gapextension) then "-t" else ""} \
      ~{if (adapter_alignment_gapend_default) then "-e" else ""} \
      ~{if (adapter_alignment_minimum) then "-Z" else ""} \
      ~{if (read_alignment_bandwidth_default) then "-w" else ""} \
      ~{if (read_alignment_gapopen) then "-W" else ""} \
      ~{if (read_alignment_gapextension_default) then "-p" else ""} \
      ~{if (read_alignment_gapend) then "-P" else ""} \
      ~{if (read_alignment_maximum) then "-X" else ""} \
      ~{if (use_mask_n) then "-z" else ""} \
      ~{if (maximum_quality_score) then "-y" else ""} \
      ~{if (print_overhang_are) then "-g" else ""} \
      ~{if defined(max_number_write) then ("-s " +  '"' + max_number_write + '"') else ""} \
      ~{if (minimum_overall_base_pair_overlap_merge) then "-o" else ""} \
      ~{if (maximum_fraction_to) then "-m" else ""} \
      ~{if (minimum_fraction_overlap) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    the_spinner: "the spinner?"
    help_message_exit: "this help message and exit (also works with no args)"
    sequence_phred_format: "sequence is in phred+64 rather than phred+33 format, the output will still be phred+33"
    quality_score_cutoff: "<Quality score cutoff for mismatches to be counted in overlap; default = 13>"
    minimum_length_trimmed: "<Minimum length of a trimmed or merged read to print it; default = 30>"
    forward_read_sequence: "<forward read primer/adapter sequence to trim as it would appear at the end of a read (recommend about 20bp of this)\\n(should validate by grepping a file); default (genomic non-multiplexed adapter1) = AGATCGGAAGAGCACACGTC>"
    reverse_read_sequence: "<reverse read primer/adapter sequence to trim as it would appear at the end of a read (recommend about 20bp of this)\\n(should validate by grepping a file); default (genomic non-multiplexed adapter2) = AGATCGGAAGAGCGTCGTGT>"
    minimum_overall_base_pair_overlap_trim: "<minimum overall base pair overlap with adapter sequence to trim; default = 10>"
    maximum_fraction_for: "<maximum fraction of good quality mismatching bases for primer/adapter overlap; default = 0.020000>"
    minimum_fraction_matching: "<minimum fraction of matching bases for primer/adapter overlap; default = 0.870000>"
    adapter_alignment_bandwidth_default: "<adapter alignment band-width; default = 50>"
    adapter_alignment_gapopen: "<adapter alignment gap-open; default = 8>"
    adapter_alignment_gapextension: "<adapter alignment gap-extension; default = 2>"
    adapter_alignment_gapend_default: "<adapter alignment gap-end; default = 2>"
    adapter_alignment_minimum: "<adapter alignment minimum local alignment score cutoff [roughly (2*num_hits) - (num_gaps*gap_open) - (num_gaps*gap_close) - (gap_len*gap_extend) - (2*num_mismatches)]; default = 26>"
    read_alignment_bandwidth_default: "<read alignment band-width; default = 50>"
    read_alignment_gapopen: "<read alignment gap-open; default = 26>"
    read_alignment_gapextension_default: "<read alignment gap-extension; default = 9>"
    read_alignment_gapend: "<read alignment gap-end; default = 5>"
    read_alignment_maximum: "<read alignment maximum fraction gap cutoff; default = 0.125000>"
    use_mask_n: "<use mask; N will replace adapters>"
    maximum_quality_score: "<maximum quality score in output ((phred 33) default = ']' )>"
    print_overhang_are: "<print overhang when adapters are present and stripped (use this if reads are different length)>"
    max_number_write: "<max number of pretty alignments to write (if -E provided); default = 10000>"
    minimum_overall_base_pair_overlap_merge: "<minimum overall base pair overlap to merge two reads; default = 15>"
    maximum_fraction_to: "<maximum fraction of good quality mismatching bases to overlap reads; default = 0.020000>"
    minimum_fraction_overlap: "<minimum fraction of matching bases to overlap reads; default = 0.900000>"
    required: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_max_number_write = "${in_max_number_write}"
  }
}