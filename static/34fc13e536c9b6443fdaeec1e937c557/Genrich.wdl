version 1.0

task Genrich {
  input {
    Boolean? file_files_experimental
    File? file_peak_file
    Boolean? file_files_control
    File? file_file_pq
    File? file_file_pileups
    File? file_bed_file
    File? file_output_file
    Boolean? remove_pcr_duplicates
    Boolean? arg_commaseparated_list
    Boolean? file_bed_files
    Boolean? int_minimum_mapq
    Boolean? float_keep_alns
    Boolean? keep_unpaired_alignments
    Boolean? int_lengths_changed
    Boolean? keep_unpaired_lengths
    Boolean? use_atacseq_mode
    Boolean? int_expand_cut
    Boolean? skip_tn_adjustments
    Boolean? float_maximum_def
    Boolean? float_fdradjusted_def
    Boolean? float_minimum_auc
    Boolean? int_minimum_length
    Boolean? int_maximum_distance
    Boolean? skip_peakcalling
    Boolean? call_peaks_directly
    Boolean? option_gzipcompress_outputs
    Boolean? option_print_status
  }
  command <<<
    Genrich \
      ~{if (file_files_experimental) then "-t" else ""} \
      ~{if (file_peak_file) then "-o" else ""} \
      ~{if (file_files_control) then "-c" else ""} \
      ~{if (file_file_pq) then "-f" else ""} \
      ~{if (file_file_pileups) then "-k" else ""} \
      ~{if (file_bed_file) then "-b" else ""} \
      ~{if (file_output_file) then "-R" else ""} \
      ~{if (remove_pcr_duplicates) then "-r" else ""} \
      ~{if (arg_commaseparated_list) then "-e" else ""} \
      ~{if (file_bed_files) then "-E" else ""} \
      ~{if (int_minimum_mapq) then "-m" else ""} \
      ~{if (float_keep_alns) then "-s" else ""} \
      ~{if (keep_unpaired_alignments) then "-y" else ""} \
      ~{if (int_lengths_changed) then "-w" else ""} \
      ~{if (keep_unpaired_lengths) then "-x" else ""} \
      ~{if (use_atacseq_mode) then "-j" else ""} \
      ~{if (int_expand_cut) then "-d" else ""} \
      ~{if (skip_tn_adjustments) then "-D" else ""} \
      ~{if (float_maximum_def) then "-p" else ""} \
      ~{if (float_fdradjusted_def) then "-q" else ""} \
      ~{if (float_minimum_auc) then "-a" else ""} \
      ~{if (int_minimum_length) then "-l" else ""} \
      ~{if (int_maximum_distance) then "-g" else ""} \
      ~{if (skip_peakcalling) then "-X" else ""} \
      ~{if (call_peaks_directly) then "-P" else ""} \
      ~{if (option_gzipcompress_outputs) then "-z" else ""} \
      ~{if (option_print_status) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_files_experimental: "<file>       Input SAM/BAM file(s) for experimental sample(s)"
    file_peak_file: "<file>       Output peak file (in ENCODE narrowPeak format)"
    file_files_control: "<file>       Input SAM/BAM file(s) for control sample(s)"
    file_file_pq: "<file>       Output bedgraph-ish file for p/q values"
    file_file_pileups: "<file>       Output bedgraph-ish file for pileups and p-values"
    file_bed_file: "<file>       Output BED file for reads/fragments/intervals"
    file_output_file: "<file>       Output file for PCR duplicates (only with -r)"
    remove_pcr_duplicates: "Remove PCR duplicates"
    arg_commaseparated_list: "<arg>        Comma-separated list of chromosomes to exclude"
    file_bed_files: "<file>       Input BED file(s) of genomic regions to exclude"
    int_minimum_mapq: "<int>        Minimum MAPQ to keep an alignment (def. 0)"
    float_keep_alns: "<float>      Keep sec alns with AS >= bestAS - <float> (def. 0)"
    keep_unpaired_alignments: "Keep unpaired alignments (def. false)"
    int_lengths_changed: "<int>        Keep unpaired alns, lengths changed to <int>"
    keep_unpaired_lengths: "Keep unpaired alns, lengths changed to paired avg"
    use_atacseq_mode: "Use ATAC-seq mode (def. false)"
    int_expand_cut: "<int>        Expand cut sites to <int> bp (def. 100)"
    skip_tn_adjustments: "Skip Tn5 adjustments of cut sites (def. false)"
    float_maximum_def: "<float>      Maximum p-value (def. 0.01)"
    float_fdradjusted_def: "<float>      Maximum q-value (FDR-adjusted p-value; def. 1)"
    float_minimum_auc: "<float>      Minimum AUC for a peak (def. 200.0)"
    int_minimum_length: "<int>        Minimum length of a peak (def. 0)"
    int_maximum_distance: "<int>        Maximum distance between signif. sites (def. 100)"
    skip_peakcalling: "Skip peak-calling"
    call_peaks_directly: "Call peaks directly from a log file (-f)"
    option_gzipcompress_outputs: "Option to gzip-compress output(s)"
    option_print_status: "Option to print status updates/counts to stderr"
  }
  output {
    File out_stdout = stdout()
    File out_file_peak_file = "${in_file_peak_file}"
    File out_file_file_pq = "${in_file_file_pq}"
    File out_file_file_pileups = "${in_file_file_pileups}"
    File out_file_bed_file = "${in_file_bed_file}"
    File out_file_output_file = "${in_file_output_file}"
  }
}