version 1.0

task Tophat2 {
  input {
    Boolean? v_slash_version
    Boolean? oslash_output_dir
    Boolean? bowtie_one
    Boolean? n_slash_read_mismatches
    Boolean? read_gap_length
    Boolean? read_edit_dist
    Boolean? read_realign_edit_dist
    Boolean? a_slash_min_anchor
    Boolean? m_slash_splice_mismatches
    Boolean? i_slash_min_intron_length
    Boolean? i_slash_max_intron_length
    Boolean? g_slash_max_multi_hits
    Boolean? suppress_hits
    Boolean? x_slash_transcriptome_max_hits
    Boolean? m_slash_prefilter_multi_hits
    Boolean? max_insertion_length
    Boolean? max_deletion_length
    Boolean? solexa_quals
    Boolean? solexa_one_dot_three_quals
    Boolean? phred_six_four_quals
    Boolean? q_slash_quals
    Boolean? integer_quals
    Boolean? c_slash_color
    Boolean? color_out
    Boolean? library_type
    Boolean? p_slash_num_threads
    Boolean? r_slash_resume
    Boolean? g_slash_gtf
    Boolean? transcriptome_index
    Boolean? t_slash_transcriptome_only
    Boolean? j_slash_raw_jun_cs
    Boolean? insertions
    Boolean? deletions
    Boolean? r_slash_mate_inner_dist
    Boolean? mate_std_dev
    Boolean? no_novel_jun_cs
    Boolean? no_novel_indels
    Boolean? no_gtf_jun_cs
    Boolean? no_coverage_search
    Boolean? coverage_search
    Boolean? micro_exon_search
    Boolean? keep_tmp
    Boolean? tmp_dir
    Boolean? z_slash_z_packer
    Boolean? x_slash_unmapped_fifo
    Boolean? report_secondary_alignments
    Boolean? no_discordant
    Boolean? no_mixed
    Boolean? segment_mismatches
    Boolean? segment_length
    Boolean? bowtie_n
    Boolean? min_coverage_intron
    Boolean? max_coverage_intron
    Boolean? min_segment_intron
    Boolean? max_segment_intron
    Boolean? no_sort_bam
    Boolean? no_convert_bam
    Boolean? keep_fast_a_order
    Boolean? allow_partial_mapping
    Boolean? b_two_very_fast
    Boolean? b_two_fast
    Boolean? b_two_sensitive
    Boolean? b_two_very_sensitive
    Boolean? b_two_n
    Boolean? b_two_l
    Boolean? b_two_i
    Boolean? b_two_n_ceil
    Boolean? b_two_g_bar
    Boolean? b_two_mp
    Boolean? b_two_np
    Boolean? b_two_rdg
    Boolean? b_two_rfg
    Boolean? b_two_score_min
    Boolean? b_two_d
    Boolean? b_two_r
    Boolean? fusion_search
    Boolean? fusion_anchor_length
    Boolean? fusion_min_dist
    Boolean? fusion_read_mismatches
    Boolean? fusion_multi_reads
    Boolean? fusion_multi_pairs
    Boolean? fusion_ignore_chromosomes
    Boolean? fusion_do_not_resolve_conflicts
    Boolean? rg_id
    Boolean? rg_sample
    Boolean? rg_library
    Boolean? rg_description
    Boolean? rg_platform_unit
    Boolean? rg_center
    Boolean? rg_date
    Boolean? rg_platform
    String top_hat
    String bowtie_index
  }
  command <<<
    tophat2 \
      ~{top_hat} \
      ~{bowtie_index} \
      ~{if (v_slash_version) then "-v/--version" else ""} \
      ~{if (oslash_output_dir) then "-o/--output-dir" else ""} \
      ~{if (bowtie_one) then "--bowtie1" else ""} \
      ~{if (n_slash_read_mismatches) then "-N/--read-mismatches" else ""} \
      ~{if (read_gap_length) then "--read-gap-length" else ""} \
      ~{if (read_edit_dist) then "--read-edit-dist" else ""} \
      ~{if (read_realign_edit_dist) then "--read-realign-edit-dist" else ""} \
      ~{if (a_slash_min_anchor) then "-a/--min-anchor" else ""} \
      ~{if (m_slash_splice_mismatches) then "-m/--splice-mismatches" else ""} \
      ~{if (i_slash_min_intron_length) then "-i/--min-intron-length" else ""} \
      ~{if (i_slash_max_intron_length) then "-I/--max-intron-length" else ""} \
      ~{if (g_slash_max_multi_hits) then "-g/--max-multihits" else ""} \
      ~{if (suppress_hits) then "--suppress-hits" else ""} \
      ~{if (x_slash_transcriptome_max_hits) then "-x/--transcriptome-max-hits" else ""} \
      ~{if (m_slash_prefilter_multi_hits) then "-M/--prefilter-multihits" else ""} \
      ~{if (max_insertion_length) then "--max-insertion-length" else ""} \
      ~{if (max_deletion_length) then "--max-deletion-length" else ""} \
      ~{if (solexa_quals) then "--solexa-quals" else ""} \
      ~{if (solexa_one_dot_three_quals) then "--solexa1.3-quals" else ""} \
      ~{if (phred_six_four_quals) then "--phred64-quals" else ""} \
      ~{if (q_slash_quals) then "-Q/--quals" else ""} \
      ~{if (integer_quals) then "--integer-quals" else ""} \
      ~{if (c_slash_color) then "-C/--color" else ""} \
      ~{if (color_out) then "--color-out" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (p_slash_num_threads) then "-p/--num-threads" else ""} \
      ~{if (r_slash_resume) then "-R/--resume" else ""} \
      ~{if (g_slash_gtf) then "-G/--GTF" else ""} \
      ~{if (transcriptome_index) then "--transcriptome-index" else ""} \
      ~{if (t_slash_transcriptome_only) then "-T/--transcriptome-only" else ""} \
      ~{if (j_slash_raw_jun_cs) then "-j/--raw-juncs" else ""} \
      ~{if (insertions) then "--insertions" else ""} \
      ~{if (deletions) then "--deletions" else ""} \
      ~{if (r_slash_mate_inner_dist) then "-r/--mate-inner-dist" else ""} \
      ~{if (mate_std_dev) then "--mate-std-dev" else ""} \
      ~{if (no_novel_jun_cs) then "--no-novel-juncs" else ""} \
      ~{if (no_novel_indels) then "--no-novel-indels" else ""} \
      ~{if (no_gtf_jun_cs) then "--no-gtf-juncs" else ""} \
      ~{if (no_coverage_search) then "--no-coverage-search" else ""} \
      ~{if (coverage_search) then "--coverage-search" else ""} \
      ~{if (micro_exon_search) then "--microexon-search" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (z_slash_z_packer) then "-z/--zpacker" else ""} \
      ~{if (x_slash_unmapped_fifo) then "-X/--unmapped-fifo" else ""} \
      ~{if (report_secondary_alignments) then "--report-secondary-alignments" else ""} \
      ~{if (no_discordant) then "--no-discordant" else ""} \
      ~{if (no_mixed) then "--no-mixed" else ""} \
      ~{if (segment_mismatches) then "--segment-mismatches" else ""} \
      ~{if (segment_length) then "--segment-length" else ""} \
      ~{if (bowtie_n) then "--bowtie-n" else ""} \
      ~{if (min_coverage_intron) then "--min-coverage-intron" else ""} \
      ~{if (max_coverage_intron) then "--max-coverage-intron" else ""} \
      ~{if (min_segment_intron) then "--min-segment-intron" else ""} \
      ~{if (max_segment_intron) then "--max-segment-intron" else ""} \
      ~{if (no_sort_bam) then "--no-sort-bam" else ""} \
      ~{if (no_convert_bam) then "--no-convert-bam" else ""} \
      ~{if (keep_fast_a_order) then "--keep-fasta-order" else ""} \
      ~{if (allow_partial_mapping) then "--allow-partial-mapping" else ""} \
      ~{if (b_two_very_fast) then "--b2-very-fast" else ""} \
      ~{if (b_two_fast) then "--b2-fast" else ""} \
      ~{if (b_two_sensitive) then "--b2-sensitive" else ""} \
      ~{if (b_two_very_sensitive) then "--b2-very-sensitive" else ""} \
      ~{if (b_two_n) then "--b2-N" else ""} \
      ~{if (b_two_l) then "--b2-L" else ""} \
      ~{if (b_two_i) then "--b2-i" else ""} \
      ~{if (b_two_n_ceil) then "--b2-n-ceil" else ""} \
      ~{if (b_two_g_bar) then "--b2-gbar" else ""} \
      ~{if (b_two_mp) then "--b2-mp" else ""} \
      ~{if (b_two_np) then "--b2-np" else ""} \
      ~{if (b_two_rdg) then "--b2-rdg" else ""} \
      ~{if (b_two_rfg) then "--b2-rfg" else ""} \
      ~{if (b_two_score_min) then "--b2-score-min" else ""} \
      ~{if (b_two_d) then "--b2-D" else ""} \
      ~{if (b_two_r) then "--b2-R" else ""} \
      ~{if (fusion_search) then "--fusion-search" else ""} \
      ~{if (fusion_anchor_length) then "--fusion-anchor-length" else ""} \
      ~{if (fusion_min_dist) then "--fusion-min-dist" else ""} \
      ~{if (fusion_read_mismatches) then "--fusion-read-mismatches" else ""} \
      ~{if (fusion_multi_reads) then "--fusion-multireads" else ""} \
      ~{if (fusion_multi_pairs) then "--fusion-multipairs" else ""} \
      ~{if (fusion_ignore_chromosomes) then "--fusion-ignore-chromosomes" else ""} \
      ~{if (fusion_do_not_resolve_conflicts) then "--fusion-do-not-resolve-conflicts" else ""} \
      ~{if (rg_id) then "--rg-id" else ""} \
      ~{if (rg_sample) then "--rg-sample" else ""} \
      ~{if (rg_library) then "--rg-library" else ""} \
      ~{if (rg_description) then "--rg-description" else ""} \
      ~{if (rg_platform_unit) then "--rg-platform-unit" else ""} \
      ~{if (rg_center) then "--rg-center" else ""} \
      ~{if (rg_date) then "--rg-date" else ""} \
      ~{if (rg_platform) then "--rg-platform" else ""}
  >>>
  parameter_meta {
    v_slash_version: ""
    oslash_output_dir: "<string>    [ default: ./tophat_out         ]"
    bowtie_one: "[ default: bowtie2              ]"
    n_slash_read_mismatches: "<int>       [ default: 2                    ]"
    read_gap_length: "<int>       [ default: 2                    ]"
    read_edit_dist: "<int>       [ default: 2                    ]"
    read_realign_edit_dist: "<int>       [ default: \\\"read-edit-dist\\\" + 1 ]"
    a_slash_min_anchor: "<int>       [ default: 8                    ]"
    m_slash_splice_mismatches: "<0-2>       [ default: 0                    ]"
    i_slash_min_intron_length: "<int>       [ default: 50                   ]"
    i_slash_max_intron_length: "<int>       [ default: 500000               ]"
    g_slash_max_multi_hits: "<int>       [ default: 20                   ]"
    suppress_hits: ""
    x_slash_transcriptome_max_hits: "<int>       [ default: 60                   ]"
    m_slash_prefilter_multi_hits: "( for -G/--GTF option, enable\\nan initial bowtie search\\nagainst the genome )"
    max_insertion_length: "<int>       [ default: 3                    ]"
    max_deletion_length: "<int>       [ default: 3                    ]"
    solexa_quals: ""
    solexa_one_dot_three_quals: "(same as phred64-quals)"
    phred_six_four_quals: "(same as solexa1.3-quals)"
    q_slash_quals: ""
    integer_quals: ""
    c_slash_color: "(Solid - color space)"
    color_out: ""
    library_type: "<string>    (fr-unstranded, fr-firststrand,\\nfr-secondstrand)"
    p_slash_num_threads: "<int>       [ default: 1                   ]"
    r_slash_resume: "<out_dir>   ( try to resume execution )"
    g_slash_gtf: "<filename>  (GTF/GFF with known transcripts)"
    transcriptome_index: "<bwtidx>    (transcriptome bowtie index)"
    t_slash_transcriptome_only: "(map only to the transcriptome)"
    j_slash_raw_jun_cs: "<filename>"
    insertions: "<filename>"
    deletions: "<filename>"
    r_slash_mate_inner_dist: "<int>       [ default: 50                  ]"
    mate_std_dev: "<int>       [ default: 20                  ]"
    no_novel_jun_cs: ""
    no_novel_indels: ""
    no_gtf_jun_cs: ""
    no_coverage_search: ""
    coverage_search: ""
    micro_exon_search: ""
    keep_tmp: ""
    tmp_dir: "<dirname>   [ default: <output_dir>/tmp ]"
    z_slash_z_packer: "<program>   [ default: gzip             ]"
    x_slash_unmapped_fifo: "[use mkfifo to compress more temporary\\nfiles for color space reads]"
    report_secondary_alignments: ""
    no_discordant: ""
    no_mixed: ""
    segment_mismatches: "<int>       [ default: 2                ]"
    segment_length: "<int>       [ default: 25               ]"
    bowtie_n: "[ default: bowtie -v        ]"
    min_coverage_intron: "<int>       [ default: 50               ]"
    max_coverage_intron: "<int>       [ default: 20000            ]"
    min_segment_intron: "<int>       [ default: 50               ]"
    max_segment_intron: "<int>       [ default: 500000           ]"
    no_sort_bam: "(Output BAM is not coordinate-sorted)"
    no_convert_bam: "(Do not output bam format.\\nOutput is <output_dir>/accepted_hits.sam)"
    keep_fast_a_order: ""
    allow_partial_mapping: ""
    b_two_very_fast: ""
    b_two_fast: ""
    b_two_sensitive: ""
    b_two_very_sensitive: ""
    b_two_n: "<int>       [ default: 0                ]"
    b_two_l: "<int>       [ default: 20               ]"
    b_two_i: "<func>      [ default: S,1,1.25         ]"
    b_two_n_ceil: "<func>      [ default: L,0,0.15         ]"
    b_two_g_bar: "<int>       [ default: 4                ]"
    b_two_mp: "<int>,<int> [ default: 6,2              ]"
    b_two_np: "<int>       [ default: 1                ]"
    b_two_rdg: "<int>,<int> [ default: 5,3              ]"
    b_two_rfg: "<int>,<int> [ default: 5,3              ]"
    b_two_score_min: "<func>      [ default: L,-0.6,-0.6      ]"
    b_two_d: "<int>       [ default: 15               ]"
    b_two_r: "<int>       [ default: 2                ]"
    fusion_search: ""
    fusion_anchor_length: "<int>       [ default: 20               ]"
    fusion_min_dist: "<int>       [ default: 10000000         ]"
    fusion_read_mismatches: "<int>       [ default: 2                ]"
    fusion_multi_reads: "<int>       [ default: 2                ]"
    fusion_multi_pairs: "<int>       [ default: 2                ]"
    fusion_ignore_chromosomes: "<list>      [ e.g, <chrM,chrX>          ]"
    fusion_do_not_resolve_conflicts: "[this is for test purposes  ]"
    rg_id: "<string>    (read group ID)"
    rg_sample: "<string>    (sample ID)"
    rg_library: "<string>    (library ID)"
    rg_description: "<string>    (descriptive string, no tabs allowed)"
    rg_platform_unit: "<string>    (e.g Illumina lane ID)"
    rg_center: "<string>    (sequencing center name)"
    rg_date: "<string>    (ISO 8601 date of the sequencing run)"
    rg_platform: "<string>    (Sequencing platform descriptor)"
    top_hat: ""
    bowtie_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}