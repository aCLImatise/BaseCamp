version 1.0

task Pbmm2Align {
  input {
    Boolean? chunk_size
    Boolean? sort
    Boolean? sort_memory
    Boolean? sort_threads
    Boolean? preset
    Boolean? int_kmer_size
    Boolean? int_minimizer_window
    Boolean? no_km_er_compression
    Boolean? int_matching_score
    Boolean? int_mismatch_penalty
    Boolean? int_zdrop_score
    Boolean? int_zdrop_inversion
    Boolean? int_bandwidth_used
    Boolean? int_stop_enlongation
    Boolean? gap_open_one
    Boolean? gap_open_two
    Boolean? gap_extend_one
    Boolean? gap_extend_two
    Boolean? lj_min_ratio
    Boolean? int_max_intron
    Boolean? int_cost_noncanonical
    Boolean? no_splice_flank
    Boolean? sample
    Boolean? rg
    Boolean? min_concordance_perc
    Boolean? min_id_perc
    Boolean? min_gap_comp_id_perc
    Boolean? min_length
    Boolean? best_n
    Boolean? strip
    Boolean? split_by_sample
    Boolean? unmapped
    Boolean? bam_index
    Boolean? median_filter
    Boolean? z_mw
    Boolean? hq_region
    Boolean? collapse_homopolymers
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String out_dot_aligned_dot_bam_vertical_line_xml
    String ref_dot_f_a_vertical_line_xml_vertical_line_mmi
    String str
    String in_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_gz_vertical_line_fof_n
    String var_input
    String var_output
    String reference
    String bam
    String fast_a
    String or
    String dataset
  }
  command <<<
    pbmm2 align \
      ~{out_dot_aligned_dot_bam_vertical_line_xml} \
      ~{ref_dot_f_a_vertical_line_xml_vertical_line_mmi} \
      ~{str} \
      ~{in_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_gz_vertical_line_fof_n} \
      ~{var_input} \
      ~{var_output} \
      ~{reference} \
      ~{bam} \
      ~{fast_a} \
      ~{or} \
      ~{dataset} \
      ~{if (chunk_size) then "--chunk-size" else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (sort_memory) then "--sort-memory" else ""} \
      ~{if (sort_threads) then "--sort-threads" else ""} \
      ~{if (preset) then "--preset" else ""} \
      ~{if (int_kmer_size) then "-k" else ""} \
      ~{if (int_minimizer_window) then "-w" else ""} \
      ~{if (no_km_er_compression) then "--no-kmer-compression" else ""} \
      ~{if (int_matching_score) then "-A" else ""} \
      ~{if (int_mismatch_penalty) then "-B" else ""} \
      ~{if (int_zdrop_score) then "-z" else ""} \
      ~{if (int_zdrop_inversion) then "-Z" else ""} \
      ~{if (int_bandwidth_used) then "-r" else ""} \
      ~{if (int_stop_enlongation) then "-g" else ""} \
      ~{if (gap_open_one) then "--gap-open-1" else ""} \
      ~{if (gap_open_two) then "--gap-open-2" else ""} \
      ~{if (gap_extend_one) then "--gap-extend-1" else ""} \
      ~{if (gap_extend_two) then "--gap-extend-2" else ""} \
      ~{if (lj_min_ratio) then "--lj-min-ratio" else ""} \
      ~{if (int_max_intron) then "-G" else ""} \
      ~{if (int_cost_noncanonical) then "-C" else ""} \
      ~{if (no_splice_flank) then "--no-splice-flank" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (rg) then "--rg" else ""} \
      ~{if (min_concordance_perc) then "--min-concordance-perc" else ""} \
      ~{if (min_id_perc) then "--min-id-perc" else ""} \
      ~{if (min_gap_comp_id_perc) then "--min-gap-comp-id-perc" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (best_n) then "--best-n" else ""} \
      ~{if (strip) then "--strip" else ""} \
      ~{if (split_by_sample) then "--split-by-sample" else ""} \
      ~{if (unmapped) then "--unmapped" else ""} \
      ~{if (bam_index) then "--bam-index" else ""} \
      ~{if (median_filter) then "--median-filter" else ""} \
      ~{if (z_mw) then "--zmw" else ""} \
      ~{if (hq_region) then "--hqregion" else ""} \
      ~{if (collapse_homopolymers) then "--collapse-homopolymers" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chunk_size: "INT    Process N records per chunk. [100]"
    sort: "Generate sorted BAM file."
    sort_memory: "STR    Memory per thread for sorting. [768M]"
    sort_threads: "INT    Number of threads used for sorting; 0 means 25% of -j, maximum 8. [0]"
    preset: "STR    Set alignment mode. See below for preset parameter details. Valid choices:\\n(SUBREAD, CCS, HIFI, ISOSEQ, UNROLLED). [SUBREAD]"
    int_kmer_size: "INT    k-mer size (no larger than 28). [-1]"
    int_minimizer_window: "INT    Minimizer window size. [-1]"
    no_km_er_compression: "Disable homopolymer-compressed k-mer (compression is active for SUBREAD & UNROLLED\\npresets)."
    int_matching_score: "INT    Matching score. [-1]"
    int_mismatch_penalty: "INT    Mismatch penalty. [-1]"
    int_zdrop_score: "INT    Z-drop score. [-1]"
    int_zdrop_inversion: "INT    Z-drop inversion score. [-1]"
    int_bandwidth_used: "INT    Bandwidth used in chaining and DP-based alignment. [-1]"
    int_stop_enlongation: "INT    Stop chain enlongation if there are no minimizers in N bp. [-1]"
    gap_open_one: "INT    Gap open penalty 1. [-1]"
    gap_open_two: "INT    Gap open penalty 2. [-1]"
    gap_extend_one: "INT    Gap extension penalty 1. [-1]"
    gap_extend_two: "INT    Gap extension penalty 2. [-1]"
    lj_min_ratio: "FLOAT  Long join flank ratio. [-1]"
    int_max_intron: "INT    Max intron length (changes -r). [-1]"
    int_cost_noncanonical: "INT    Cost for a non-canonical GT-AG splicing (effective in ISOSEQ preset). [-1]"
    no_splice_flank: "Do not prefer splice flanks GT-AG (effective in ISOSEQ preset)."
    sample: "STR    Sample name for all read groups. Defaults, in order of precedence: SM field in\\ninput read group, biosample name, well sample name, \\\"UnnamedSample\\\"."
    rg: "STR    Read group header line such as '@RG\\tID:xyz\\tSM:abc'. Only for FASTA/Q inputs."
    min_concordance_perc: "FLOAT  Minimum alignment concordance in percent. [70]"
    min_id_perc: "FLOAT  Minimum sequence identity in percent. [0]"
    min_gap_comp_id_perc: "FLOAT  Minimum gap compressed sequence identity in percent. [0]"
    min_length: "INT    Minimum mapped read length in basepairs. [50]"
    best_n: "INT    Output at maximum N alignments for each read, 0 means no maximum. [0]"
    strip: "Remove all kinetic and extra QV tags. Output cannot be polished."
    split_by_sample: "One output BAM per sample."
    unmapped: "Include unmapped records in output."
    bam_index: "STR    Generate index for sorted BAM output. Valid choices: (NONE, BAI, CSI). [BAI]"
    median_filter: "Pick one read per ZMW of median length."
    z_mw: "Process ZMW Reads, subreadset.xml input required (activates UNROLLED preset)."
    hq_region: "Process HQ region of each ZMW, subreadset.xml input required (activates UNROLLED\\npreset)."
    collapse_homopolymers: "Collapse homopolymers in reads and reference."
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    out_dot_aligned_dot_bam_vertical_line_xml: ""
    ref_dot_f_a_vertical_line_xml_vertical_line_mmi: ""
    str: ""
    in_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_gz_vertical_line_fof_n: ""
    var_input: ""
    var_output: ""
    reference: ""
    bam: ""
    fast_a: ""
    or: ""
    dataset: ""
  }
  output {
    File out_stdout = stdout()
  }
}