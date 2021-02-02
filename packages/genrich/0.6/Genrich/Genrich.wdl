version 1.0

task Genrich {
  input {
    Boolean? file_input_experimental
    File? file_output_peak
    Boolean? file_input_control
    File? file_output_pq
    File? file_pileups_pvalues
    File? file_output_bed
    File? file_output_file
    Boolean? remove_pcr_duplicates
    Boolean? arg_commaseparated_list
    Boolean? file_input_bed
    Boolean? int_minimum_mapq
    Boolean? float_keep_alns
    Boolean? keep_unpaired_alignments
    Boolean? int_keep_lengths
    Boolean? keep_unpaired_lengths
    Boolean? use_atacseq_mode
    Boolean? int_expand_cut
    Boolean? skip_tn_adjustments
    Boolean? float_maximum_pvalue
    Boolean? float_maximum_qvalue
    Boolean? float_minimum_auc
    Boolean? int_minimum_length
    Boolean? maximum_distance_signif
    Boolean? skip_peakcalling
    Boolean? call_peaks_directly
    Boolean? option_gzipcompress_outputs
    Boolean? option_print_updatescounts
  }
  command <<<
    Genrich \
      ~{if (file_input_experimental) then "-t" else ""} \
      ~{if (file_output_peak) then "-o" else ""} \
      ~{if (file_input_control) then "-c" else ""} \
      ~{if (file_output_pq) then "-f" else ""} \
      ~{if (file_pileups_pvalues) then "-k" else ""} \
      ~{if (file_output_bed) then "-b" else ""} \
      ~{if (file_output_file) then "-R" else ""} \
      ~{if (remove_pcr_duplicates) then "-r" else ""} \
      ~{if (arg_commaseparated_list) then "-e" else ""} \
      ~{if (file_input_bed) then "-E" else ""} \
      ~{if (int_minimum_mapq) then "-m" else ""} \
      ~{if (float_keep_alns) then "-s" else ""} \
      ~{if (keep_unpaired_alignments) then "-y" else ""} \
      ~{if (int_keep_lengths) then "-w" else ""} \
      ~{if (keep_unpaired_lengths) then "-x" else ""} \
      ~{if (use_atacseq_mode) then "-j" else ""} \
      ~{if (int_expand_cut) then "-d" else ""} \
      ~{if (skip_tn_adjustments) then "-D" else ""} \
      ~{if (float_maximum_pvalue) then "-p" else ""} \
      ~{if (float_maximum_qvalue) then "-q" else ""} \
      ~{if (float_minimum_auc) then "-a" else ""} \
      ~{if (int_minimum_length) then "-l" else ""} \
      ~{if (maximum_distance_signif) then "-g" else ""} \
      ~{if (skip_peakcalling) then "-X" else ""} \
      ~{if (call_peaks_directly) then "-P" else ""} \
      ~{if (option_gzipcompress_outputs) then "-z" else ""} \
      ~{if (option_print_updatescounts) then "-v" else ""}
  >>>
  parameter_meta {
    file_input_experimental: "<file>       Input SAM/BAM file(s) for experimental sample(s)"
    file_output_peak: "<file>       Output peak file (in ENCODE narrowPeak format)"
    file_input_control: "<file>       Input SAM/BAM file(s) for control sample(s)"
    file_output_pq: "<file>       Output bedgraph-ish file for p/q values"
    file_pileups_pvalues: "<file>       Output bedgraph-ish file for pileups and p-values"
    file_output_bed: "<file>       Output BED file for reads/fragments/intervals"
    file_output_file: "<file>       Output file for PCR duplicates (only with -r)"
    remove_pcr_duplicates: "Remove PCR duplicates"
    arg_commaseparated_list: "<arg>        Comma-separated list of chromosomes to exclude"
    file_input_bed: "<file>       Input BED file(s) of genomic regions to exclude"
    int_minimum_mapq: "<int>        Minimum MAPQ to keep an alignment (def. 0)"
    float_keep_alns: "<float>      Keep sec alns with AS >= bestAS - <float> (def. 0)"
    keep_unpaired_alignments: "Keep unpaired alignments (def. false)"
    int_keep_lengths: "<int>        Keep unpaired alns, lengths changed to <int>"
    keep_unpaired_lengths: "Keep unpaired alns, lengths changed to paired avg"
    use_atacseq_mode: "Use ATAC-seq mode (def. false)"
    int_expand_cut: "<int>        Expand cut sites to <int> bp (def. 100)"
    skip_tn_adjustments: "Skip Tn5 adjustments of cut sites (def. false)"
    float_maximum_pvalue: "<float>      Maximum p-value (def. 0.01)"
    float_maximum_qvalue: "<float>      Maximum q-value (FDR-adjusted p-value; def. 1)"
    float_minimum_auc: "<float>      Minimum AUC for a peak (def. 200.0)"
    int_minimum_length: "<int>        Minimum length of a peak (def. 0)"
    maximum_distance_signif: "<int>        Maximum distance between signif. sites (def. 100)"
    skip_peakcalling: "Skip peak-calling"
    call_peaks_directly: "Call peaks directly from a log file (-f)"
    option_gzipcompress_outputs: "Option to gzip-compress output(s)"
    option_print_updatescounts: "Option to print status updates/counts to stderr"
  }
  output {
    File out_stdout = stdout()
    File out_file_output_peak = "${in_file_output_peak}"
    File out_file_output_pq = "${in_file_output_pq}"
    File out_file_pileups_pvalues = "${in_file_pileups_pvalues}"
    File out_file_output_bed = "${in_file_output_bed}"
    File out_file_output_file = "${in_file_output_file}"
  }
}