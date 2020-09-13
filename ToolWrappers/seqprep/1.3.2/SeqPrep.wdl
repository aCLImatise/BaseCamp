version 1.0

task SeqPrep {
  input {
    File? f
    File? r
    File? one
    File? two
    String? the_spinner
    File? three
    File? four
    String? help_message_works
    Int? sequence_phred_rather
    Boolean? quality_score_cutoff
    Boolean? minimum_length_trimmed
    Boolean? forward_read_sequence
    Boolean? reverse_read_sequence
    Boolean? minimum_overall_base_pair_overlap_trim
    Boolean? maximum_for_primeradapter
    Boolean? minimum_fraction_matching_bases_primeradapter
    Boolean? adapter_alignment_bandwidth
    Boolean? adapter_alignment_default
    Boolean? adapter_alignment_gapextension
    Boolean? adapter_alignment_gapend
    Boolean? adapter_alignment_minimum
    Boolean? read_alignment_bandwidth_default
    Boolean? read_alignment_gapopen_default
    Boolean? read_alignment_gapextension_default
    Boolean? read_alignment_gapend_default
    Boolean? read_alignment_cutoff_default
    Boolean? use_mask_n
    Boolean? maximum_quality_score
    Boolean? print_overhang_when
    File? var_29
    File? var_30
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
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(the_spinner) then ("-S " +  '"' + the_spinner + '"') else ""} \
      ~{if defined(three) then ("-3 " +  '"' + three + '"') else ""} \
      ~{if defined(four) then ("-4 " +  '"' + four + '"') else ""} \
      ~{if defined(help_message_works) then ("-h " +  '"' + help_message_works + '"') else ""} \
      ~{if defined(sequence_phred_rather) then ("-6 " +  '"' + sequence_phred_rather + '"') else ""} \
      ~{if (quality_score_cutoff) then "-q" else ""} \
      ~{if (minimum_length_trimmed) then "-L" else ""} \
      ~{if (forward_read_sequence) then "-A" else ""} \
      ~{if (reverse_read_sequence) then "-B" else ""} \
      ~{if (minimum_overall_base_pair_overlap_trim) then "-O" else ""} \
      ~{if (maximum_for_primeradapter) then "-M" else ""} \
      ~{if (minimum_fraction_matching_bases_primeradapter) then "-N" else ""} \
      ~{if (adapter_alignment_bandwidth) then "-b" else ""} \
      ~{if (adapter_alignment_default) then "-Q" else ""} \
      ~{if (adapter_alignment_gapextension) then "-t" else ""} \
      ~{if (adapter_alignment_gapend) then "-e" else ""} \
      ~{if (adapter_alignment_minimum) then "-Z" else ""} \
      ~{if (read_alignment_bandwidth_default) then "-w" else ""} \
      ~{if (read_alignment_gapopen_default) then "-W" else ""} \
      ~{if (read_alignment_gapextension_default) then "-p" else ""} \
      ~{if (read_alignment_gapend_default) then "-P" else ""} \
      ~{if (read_alignment_cutoff_default) then "-X" else ""} \
      ~{if (use_mask_n) then "-z" else ""} \
      ~{if (maximum_quality_score) then "-y" else ""} \
      ~{if (print_overhang_when) then "-g" else ""} \
      ~{if defined(var_29) then ("-s " +  '"' + var_29 + '"') else ""} \
      ~{if defined(var_30) then ("-E " +  '"' + var_30 + '"') else ""} \
      ~{if (max_number_provided) then "-x" else ""} \
      ~{if (minimum_overall_base_pair_overlap_merge) then "-o" else ""} \
      ~{if (maximum_fraction_to) then "-m" else ""} \
      ~{if (minimum_fraction_matching_bases_overlap) then "-n" else ""}
  >>>
  parameter_meta {
    f: ""
    r: ""
    one: ""
    two: ""
    the_spinner: "the spinner?"
    three: ""
    four: ""
    help_message_works: "this help message and exit (also works with no args)"
    sequence_phred_rather: "sequence is in phred+64 rather than phred+33 format, the output will still be phred+33"
    quality_score_cutoff: "<Quality score cutoff for mismatches to be counted in overlap; default = 13>"
    minimum_length_trimmed: "<Minimum length of a trimmed or merged read to print it; default = 30>"
    forward_read_sequence: "<forward read primer/adapter sequence to trim as it would appear at the end of a read (recommend about 20bp of this)\\n(should validate by grepping a file); default (genomic non-multiplexed adapter1) = AGATCGGAAGAGCACACGTC>"
    reverse_read_sequence: "<reverse read primer/adapter sequence to trim as it would appear at the end of a read (recommend about 20bp of this)\\n(should validate by grepping a file); default (genomic non-multiplexed adapter2) = AGATCGGAAGAGCGTCGTGT>"
    minimum_overall_base_pair_overlap_trim: "<minimum overall base pair overlap with adapter sequence to trim; default = 10>"
    maximum_for_primeradapter: "<maximum fraction of good quality mismatching bases for primer/adapter overlap; default = 0.020000>"
    minimum_fraction_matching_bases_primeradapter: "<minimum fraction of matching bases for primer/adapter overlap; default = 0.870000>"
    adapter_alignment_bandwidth: "<adapter alignment band-width; default = 50>"
    adapter_alignment_default: "<adapter alignment gap-open; default = 8>"
    adapter_alignment_gapextension: "<adapter alignment gap-extension; default = 2>"
    adapter_alignment_gapend: "<adapter alignment gap-end; default = 2>"
    adapter_alignment_minimum: "<adapter alignment minimum local alignment score cutoff [roughly (2*num_hits) - (num_gaps*gap_open) - (num_gaps*gap_close) - (gap_len*gap_extend) - (2*num_mismatches)]; default = 26>"
    read_alignment_bandwidth_default: "<read alignment band-width; default = 50>"
    read_alignment_gapopen_default: "<read alignment gap-open; default = 26>"
    read_alignment_gapextension_default: "<read alignment gap-extension; default = 9>"
    read_alignment_gapend_default: "<read alignment gap-end; default = 5>"
    read_alignment_cutoff_default: "<read alignment maximum fraction gap cutoff; default = 0.125000>"
    use_mask_n: "<use mask; N will replace adapters>"
    maximum_quality_score: "<maximum quality score in output ((phred 33) default = ']' )>"
    print_overhang_when: "<print overhang when adapters are present and stripped (use this if reads are different length)>"
    var_29: ""
    var_30: ""
    max_number_provided: "<max number of pretty alignments to write (if -E provided); default = 10000>"
    minimum_overall_base_pair_overlap_merge: "<minimum overall base pair overlap to merge two reads; default = 15>"
    maximum_fraction_to: "<maximum fraction of good quality mismatching bases to overlap reads; default = 0.020000>"
    minimum_fraction_matching_bases_overlap: "<minimum fraction of matching bases to overlap reads; default = 0.900000>"
    required: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_one = "${in_one}"
    File out_two = "${in_two}"
    File out_var_29 = "${in_var_29}"
  }
}