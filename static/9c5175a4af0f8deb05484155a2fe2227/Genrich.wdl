version 1.0

task Genrich {
  input {
    Boolean? file_input_experimental
    Boolean? file_output_peak
    Boolean? file_input_control
    Boolean? file_output_pq
    Boolean? file_output_pileups
    Boolean? file_output_bed
    Boolean? file_output_file
    Boolean? remove_pcr_duplicates
    Boolean? arg_commaseparated_list
    Boolean? file_input_bed
    Boolean? int_minimum_mapq
    Boolean? float_keep_sec
    Boolean? keep_unpaired_alignments
    Boolean? int_keep_unpaired
    Boolean? keep_unpaired_lengths
    Boolean? use_atacseq_mode
    Boolean? int_expand_cut
    Boolean? skip_tn_adjustments
    Boolean? float_maximum_pvalue
    Boolean? float_maximum_qvalue
    Boolean? float_minimum_auc
    Boolean? int_minimum_length
    Boolean? int_maximum_distance
    Boolean? skip_peakcalling
    Boolean? call_peaks_directly
    Boolean? option_gzipcompress_outputs
    Boolean? option_print_updatescounts
  }
  command <<<
    Genrich \
      ~{true="-t" false="" file_input_experimental} \
      ~{true="-o" false="" file_output_peak} \
      ~{true="-c" false="" file_input_control} \
      ~{true="-f" false="" file_output_pq} \
      ~{true="-k" false="" file_output_pileups} \
      ~{true="-b" false="" file_output_bed} \
      ~{true="-R" false="" file_output_file} \
      ~{true="-r" false="" remove_pcr_duplicates} \
      ~{true="-e" false="" arg_commaseparated_list} \
      ~{true="-E" false="" file_input_bed} \
      ~{true="-m" false="" int_minimum_mapq} \
      ~{true="-s" false="" float_keep_sec} \
      ~{true="-y" false="" keep_unpaired_alignments} \
      ~{true="-w" false="" int_keep_unpaired} \
      ~{true="-x" false="" keep_unpaired_lengths} \
      ~{true="-j" false="" use_atacseq_mode} \
      ~{true="-d" false="" int_expand_cut} \
      ~{true="-D" false="" skip_tn_adjustments} \
      ~{true="-p" false="" float_maximum_pvalue} \
      ~{true="-q" false="" float_maximum_qvalue} \
      ~{true="-a" false="" float_minimum_auc} \
      ~{true="-l" false="" int_minimum_length} \
      ~{true="-g" false="" int_maximum_distance} \
      ~{true="-X" false="" skip_peakcalling} \
      ~{true="-P" false="" call_peaks_directly} \
      ~{true="-z" false="" option_gzipcompress_outputs} \
      ~{true="-v" false="" option_print_updatescounts}
  >>>
  parameter_meta {
    file_input_experimental: "<file>       Input SAM/BAM file(s) for experimental sample(s)"
    file_output_peak: "<file>       Output peak file (in ENCODE narrowPeak format)"
    file_input_control: "<file>       Input SAM/BAM file(s) for control sample(s)"
    file_output_pq: "<file>       Output bedgraph-ish file for p/q values"
    file_output_pileups: "<file>       Output bedgraph-ish file for pileups and p-values"
    file_output_bed: "<file>       Output BED file for reads/fragments/intervals"
    file_output_file: "<file>       Output file for PCR duplicates (only with -r)"
    remove_pcr_duplicates: "Remove PCR duplicates"
    arg_commaseparated_list: "<arg>        Comma-separated list of chromosomes to exclude"
    file_input_bed: "<file>       Input BED file(s) of genomic regions to exclude"
    int_minimum_mapq: "<int>        Minimum MAPQ to keep an alignment (def. 0)"
    float_keep_sec: "<float>      Keep sec alns with AS >= bestAS - <float> (def. 0)"
    keep_unpaired_alignments: "Keep unpaired alignments (def. false)"
    int_keep_unpaired: "<int>        Keep unpaired alns, lengths changed to <int>"
    keep_unpaired_lengths: "Keep unpaired alns, lengths changed to paired avg"
    use_atacseq_mode: "Use ATAC-seq mode (def. false)"
    int_expand_cut: "<int>        Expand cut sites to <int> bp (def. 100)"
    skip_tn_adjustments: "Skip Tn5 adjustments of cut sites (def. false)"
    float_maximum_pvalue: "<float>      Maximum p-value (def. 0.01)"
    float_maximum_qvalue: "<float>      Maximum q-value (FDR-adjusted p-value; def. 1)"
    float_minimum_auc: "<float>      Minimum AUC for a peak (def. 200.0)"
    int_minimum_length: "<int>        Minimum length of a peak (def. 0)"
    int_maximum_distance: "<int>        Maximum distance between signif. sites (def. 100)"
    skip_peakcalling: "Skip peak-calling"
    call_peaks_directly: "Call peaks directly from a log file (-f)"
    option_gzipcompress_outputs: "Option to gzip-compress output(s)"
    option_print_updatescounts: "Option to print status updates/counts to stderr"
  }
}