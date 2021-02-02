version 1.0

task SeqPrep {
  input {
    File? second_read_input
    Int? spinner__first
    Boolean? forward_read_sequence
    Boolean? reverse_read_sequence
    Boolean? minimum_overall_base
    Boolean? maximum_fraction_mismatching
    Boolean? minimum_fraction_matching
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
    String? required
    String? args
  }
  command <<<
    SeqPrep \
      ~{required} \
      ~{args} \
      ~{if defined(second_read_input) then ("-f " +  '"' + second_read_input + '"') else ""} \
      ~{if defined(spinner__first) then ("-S " +  '"' + spinner__first + '"') else ""} \
      ~{if (forward_read_sequence) then "-A" else ""} \
      ~{if (reverse_read_sequence) then "-B" else ""} \
      ~{if (minimum_overall_base) then "-O" else ""} \
      ~{if (maximum_fraction_mismatching) then "-M" else ""} \
      ~{if (minimum_fraction_matching) then "-N" else ""} \
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
      ~{if (maximum_quality_score) then "-y" else ""}
  >>>
  parameter_meta {
    second_read_input: "-r <second read input fastq filename>\\n-1 <first read output fastq filename>\\n-2 <second read output fastq filename>"
    spinner__first: "the spinner?\\n-3 <first read discarded fastq filename>\\n-4 <second read discarded fastq filename>\\n-h Display this help message and exit (also works with no args)\\n-6 Input sequence is in phred+64 rather than phred+33 format, the output will still be phred+33\\n-q <Quality score cutoff for mismatches to be counted in overlap; default = 13>\\n-L <Minimum length of a trimmed or merged read to print it; default = 30>"
    forward_read_sequence: "<forward read primer/adapter sequence to trim as it would appear at the end of a read (recommend about 20bp of this)\\n(should validate by grepping a file); default (genomic non-multiplexed adapter1) = AGATCGGAAGAGCACACGTC>"
    reverse_read_sequence: "<reverse read primer/adapter sequence to trim as it would appear at the end of a read (recommend about 20bp of this)\\n(should validate by grepping a file); default (genomic non-multiplexed adapter2) = AGATCGGAAGAGCGTCGTGT>"
    minimum_overall_base: "<minimum overall base pair overlap with adapter sequence to trim; default = 10>"
    maximum_fraction_mismatching: "<maximum fraction of good quality mismatching bases for primer/adapter overlap; default = 0.020000>"
    minimum_fraction_matching: "<minimum fraction of matching bases for primer/adapter overlap; default = 0.870000>"
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
    maximum_quality_score: "<maximum quality score in output ((phred 33) default = ']' )>\\n-g <print overhang when adapters are present and stripped (use this if reads are different length)>\\n-s <perform merging and output the merged reads to this file>\\n-E <write pretty alignments to this file for visual Examination>\\n-x <max number of pretty alignments to write (if -E provided); default = 10000>\\n-o <minimum overall base pair overlap to merge two reads; default = 15>\\n-m <maximum fraction of good quality mismatching bases to overlap reads; default = 0.020000>\\n-n <minimum fraction of matching bases to overlap reads; default = 0.900000>\\n"
    required: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}