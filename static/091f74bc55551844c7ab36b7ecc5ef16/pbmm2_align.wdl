version 1.0

task Pbmm2Align {
  input {
    Boolean? chunk_size
    Boolean? sort
    Boolean? sort_memory
    Boolean? sort_threads
    Boolean? preset
    Boolean? int_size_larger
    Boolean? int_window_size
    Boolean? no_km_er_compression
    Boolean? int_matching_score
    Boolean? int_mismatch_penalty
    Boolean? int__zdrop_score
    Boolean? int_zdrop_inversion_score
    Boolean? int_bandwidth_used
    Boolean? int_stop_enlongation
    Boolean? gap_open_one
    Boolean? gap_open_two
    Boolean? gap_extend_one
    Boolean? gap_extend_two
    Boolean? lj_min_ratio
    Boolean? int_length_changes
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
    String iso_seq
    String unrolled
  }
  command <<<
    pbmm2 align \
      ~{iso_seq} \
      ~{unrolled} \
      ~{true="--chunk-size" false="" chunk_size} \
      ~{true="--sort" false="" sort} \
      ~{true="--sort-memory" false="" sort_memory} \
      ~{true="--sort-threads" false="" sort_threads} \
      ~{true="--preset" false="" preset} \
      ~{true="-k" false="" int_size_larger} \
      ~{true="-w" false="" int_window_size} \
      ~{true="--no-kmer-compression" false="" no_km_er_compression} \
      ~{true="-A" false="" int_matching_score} \
      ~{true="-B" false="" int_mismatch_penalty} \
      ~{true="-z" false="" int__zdrop_score} \
      ~{true="-Z" false="" int_zdrop_inversion_score} \
      ~{true="-r" false="" int_bandwidth_used} \
      ~{true="-g" false="" int_stop_enlongation} \
      ~{true="--gap-open-1" false="" gap_open_one} \
      ~{true="--gap-open-2" false="" gap_open_two} \
      ~{true="--gap-extend-1" false="" gap_extend_one} \
      ~{true="--gap-extend-2" false="" gap_extend_two} \
      ~{true="--lj-min-ratio" false="" lj_min_ratio} \
      ~{true="-G" false="" int_length_changes} \
      ~{true="-C" false="" int_cost_noncanonical} \
      ~{true="--no-splice-flank" false="" no_splice_flank} \
      ~{true="--sample" false="" sample} \
      ~{true="--rg" false="" rg} \
      ~{true="--min-concordance-perc" false="" min_concordance_perc} \
      ~{true="--min-id-perc" false="" min_id_perc} \
      ~{true="--min-gap-comp-id-perc" false="" min_gap_comp_id_perc} \
      ~{true="--min-length" false="" min_length} \
      ~{true="--best-n" false="" best_n} \
      ~{true="--strip" false="" strip} \
      ~{true="--split-by-sample" false="" split_by_sample} \
      ~{true="--unmapped" false="" unmapped} \
      ~{true="--bam-index" false="" bam_index} \
      ~{true="--median-filter" false="" median_filter} \
      ~{true="--zmw" false="" z_mw} \
      ~{true="--hqregion" false="" hq_region} \
      ~{true="--collapse-homopolymers" false="" collapse_homopolymers} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    chunk_size: "INT    Process N records per chunk. [100]"
    sort: "Generate sorted BAM file."
    sort_memory: "STR    Memory per thread for sorting. [768M]"
    sort_threads: "INT    Number of threads used for sorting; 0 means 25% of -j, maximum 8. [0]"
    preset: "STR    Set alignment mode. See below for preset parameter details. Valid choices: (SUBREAD, CCS, HIFI, ISOSEQ, UNROLLED). [SUBREAD]"
    int_size_larger: "INT    k-mer size (no larger than 28). [-1]"
    int_window_size: "INT    Minimizer window size. [-1]"
    no_km_er_compression: "Disable homopolymer-compressed k-mer (compression is active for SUBREAD & UNROLLED presets)."
    int_matching_score: "INT    Matching score. [-1]"
    int_mismatch_penalty: "INT    Mismatch penalty. [-1]"
    int__zdrop_score: "INT    Z-drop score. [-1]"
    int_zdrop_inversion_score: "INT    Z-drop inversion score. [-1]"
    int_bandwidth_used: "INT    Bandwidth used in chaining and DP-based alignment. [-1]"
    int_stop_enlongation: "INT    Stop chain enlongation if there are no minimizers in N bp. [-1]"
    gap_open_one: "INT    Gap open penalty 1. [-1]"
    gap_open_two: "INT    Gap open penalty 2. [-1]"
    gap_extend_one: "INT    Gap extension penalty 1. [-1]"
    gap_extend_two: "INT    Gap extension penalty 2. [-1]"
    lj_min_ratio: "FLOAT  Long join flank ratio. [-1]"
    int_length_changes: "INT    Max intron length (changes -r). [-1]"
    int_cost_noncanonical: "INT    Cost for a non-canonical GT-AG splicing (effective in ISOSEQ preset). [-1]"
    no_splice_flank: "Do not prefer splice flanks GT-AG (effective in ISOSEQ preset)."
    sample: "STR    Sample name for all read groups. Defaults, in order of precedence: SM field in input read group, biosample name, well sample name, \"UnnamedSample\"."
    rg: "STR    Read group header line such as '@RG\tID:xyz\tSM:abc'. Only for FASTA/Q inputs."
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
    hq_region: "Process HQ region of each ZMW, subreadset.xml input required (activates UNROLLED preset)."
    collapse_homopolymers: "Collapse homopolymers in reads and reference."
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    iso_seq: ": -k 15 -w 5  -u -o 2 -O 32 -e 1 -E 0 -A 1 -B 2 -z 200 -Z 100 -r 200000 -L 0.5 -g 2000 -C 5 -G 200000"
    unrolled: ": -k 15 -w 15    -o 2 -O 32 -e 1 -E 0 -A 1 -B 2 -z 200 -Z 100 -r 2000   -L 0.5 -g 10000"
  }
}