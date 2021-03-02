version 1.0

task Tophat {
  input {
    Boolean? bowtie_one
    Boolean? read_mismatches
    Boolean? read_gap_length
    Boolean? read_edit_dist
    Boolean? read_realign_edit_dist
    Boolean? min_anchor
    Boolean? min_intron_length
    Boolean? max_intron_length
    Boolean? max_multi_hits
    Boolean? transcriptome_max_hits
    Boolean? prefilter_multi_hits
    Boolean? max_insertion_length
    Boolean? max_deletion_length
    Boolean? solexa_one_dot_three_quals
    Boolean? phred_six_four_quals
    Boolean? integer_quals
    Boolean? library_type
    Boolean? num_threads
    Boolean? resume
    Boolean? gtf
    Boolean? transcriptome_index
    Boolean? transcriptome_only
    Boolean? raw_jun_cs
    Boolean? insertions
    Boolean? deletions
    Boolean? mate_inner_dist
    Boolean? mate_std_dev
    Boolean? no_coverage_search
    Boolean? z_packer
    Boolean? unmapped_fifo
    Boolean? report_secondary_alignments
    Boolean? segment_length
    Boolean? bowtie_n
    Boolean? min_coverage_intron
    Boolean? max_coverage_intron
    Boolean? min_segment_intron
    Boolean? max_segment_intron
    Boolean? no_sort_bam
    Boolean? no_convert_bam
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
    String bowtie_index
  }
  command <<<
    tophat \
      ~{bowtie_index} \
      ~{if (bowtie_one) then "--bowtie1" else ""} \
      ~{if (read_mismatches) then "--read-mismatches" else ""} \
      ~{if (read_gap_length) then "--read-gap-length" else ""} \
      ~{if (read_edit_dist) then "--read-edit-dist" else ""} \
      ~{if (read_realign_edit_dist) then "--read-realign-edit-dist" else ""} \
      ~{if (min_anchor) then "--min-anchor" else ""} \
      ~{if (min_intron_length) then "--min-intron-length" else ""} \
      ~{if (max_intron_length) then "--max-intron-length" else ""} \
      ~{if (max_multi_hits) then "--max-multihits" else ""} \
      ~{if (transcriptome_max_hits) then "--transcriptome-max-hits" else ""} \
      ~{if (prefilter_multi_hits) then "--prefilter-multihits" else ""} \
      ~{if (max_insertion_length) then "--max-insertion-length" else ""} \
      ~{if (max_deletion_length) then "--max-deletion-length" else ""} \
      ~{if (solexa_one_dot_three_quals) then "--solexa1.3-quals" else ""} \
      ~{if (phred_six_four_quals) then "--phred64-quals" else ""} \
      ~{if (integer_quals) then "--integer-quals" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if (gtf) then "--GTF" else ""} \
      ~{if (transcriptome_index) then "--transcriptome-index" else ""} \
      ~{if (transcriptome_only) then "--transcriptome-only" else ""} \
      ~{if (raw_jun_cs) then "--raw-juncs" else ""} \
      ~{if (insertions) then "--insertions" else ""} \
      ~{if (deletions) then "--deletions" else ""} \
      ~{if (mate_inner_dist) then "--mate-inner-dist" else ""} \
      ~{if (mate_std_dev) then "--mate-std-dev" else ""} \
      ~{if (no_coverage_search) then "--no-coverage-search" else ""} \
      ~{if (z_packer) then "--zpacker" else ""} \
      ~{if (unmapped_fifo) then "--unmapped-fifo" else ""} \
      ~{if (report_secondary_alignments) then "--report-secondary-alignments" else ""} \
      ~{if (segment_length) then "--segment-length" else ""} \
      ~{if (bowtie_n) then "--bowtie-n" else ""} \
      ~{if (min_coverage_intron) then "--min-coverage-intron" else ""} \
      ~{if (max_coverage_intron) then "--max-coverage-intron" else ""} \
      ~{if (min_segment_intron) then "--min-segment-intron" else ""} \
      ~{if (max_segment_intron) then "--max-segment-intron" else ""} \
      ~{if (no_sort_bam) then "--no-sort-bam" else ""} \
      ~{if (no_convert_bam) then "--no-convert-bam" else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    bowtie_one: "[ default: bowtie2              ]"
    read_mismatches: "<int>       [ default: 2                    ]"
    read_gap_length: "<int>       [ default: 2                    ]"
    read_edit_dist: "<int>       [ default: 2                    ]"
    read_realign_edit_dist: "<int>       [ default: \\\"read-edit-dist\\\" + 1 ]"
    min_anchor: "<int>       [ default: 8                    ]"
    min_intron_length: "<int>       [ default: 50                   ]"
    max_intron_length: "<int>       [ default: 500000               ]"
    max_multi_hits: "<int>       [ default: 20                   ]"
    transcriptome_max_hits: "<int>       [ default: 60                   ]"
    prefilter_multi_hits: "( for -G/--GTF option, enable\\nan initial bowtie search\\nagainst the genome )"
    max_insertion_length: "<int>       [ default: 3                    ]"
    max_deletion_length: "<int>       [ default: 3                    ]"
    solexa_one_dot_three_quals: "(same as phred64-quals)"
    phred_six_four_quals: "(same as solexa1.3-quals)"
    integer_quals: "(Solid - color space)"
    library_type: "<string>    (fr-unstranded, fr-firststrand,\\nfr-secondstrand)"
    num_threads: "<int>       [ default: 1                   ]"
    resume: "<out_dir>   ( try to resume execution )"
    gtf: "<filename>  (GTF/GFF with known transcripts)"
    transcriptome_index: "<bwtidx>    (transcriptome bowtie index)"
    transcriptome_only: "(map only to the transcriptome)"
    raw_jun_cs: "<filename>"
    insertions: "<filename>"
    deletions: "<filename>"
    mate_inner_dist: "<int>       [ default: 50                  ]"
    mate_std_dev: "<int>       [ default: 20                  ]"
    no_coverage_search: "<dirname>   [ default: <output_dir>/tmp ]"
    z_packer: "<program>   [ default: gzip             ]"
    unmapped_fifo: "[use mkfifo to compress more temporary\\nfiles for color space reads]"
    report_secondary_alignments: "<int>       [ default: 2                ]"
    segment_length: "<int>       [ default: 25               ]"
    bowtie_n: "[ default: bowtie -v        ]"
    min_coverage_intron: "<int>       [ default: 50               ]"
    max_coverage_intron: "<int>       [ default: 20000            ]"
    min_segment_intron: "<int>       [ default: 50               ]"
    max_segment_intron: "<int>       [ default: 500000           ]"
    no_sort_bam: "(Output BAM is not coordinate-sorted)"
    no_convert_bam: "(Do not output bam format.\\nOutput is <output_dir>/accepted_hits.sam)"
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
    bowtie_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}