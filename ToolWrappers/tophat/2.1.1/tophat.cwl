class: CommandLineTool
id: tophat.cwl
inputs:
- id: in_bowtie_one
  doc: '[ default: bowtie2              ]'
  type: boolean?
  inputBinding:
    prefix: --bowtie1
- id: in_read_mismatches
  doc: '<int>       [ default: 2                    ]'
  type: boolean?
  inputBinding:
    prefix: --read-mismatches
- id: in_read_gap_length
  doc: '<int>       [ default: 2                    ]'
  type: boolean?
  inputBinding:
    prefix: --read-gap-length
- id: in_read_edit_dist
  doc: '<int>       [ default: 2                    ]'
  type: boolean?
  inputBinding:
    prefix: --read-edit-dist
- id: in_read_realign_edit_dist
  doc: '<int>       [ default: "read-edit-dist" + 1 ]'
  type: boolean?
  inputBinding:
    prefix: --read-realign-edit-dist
- id: in_min_anchor
  doc: '<int>       [ default: 8                    ]'
  type: boolean?
  inputBinding:
    prefix: --min-anchor
- id: in_min_intron_length
  doc: '<int>       [ default: 50                   ]'
  type: boolean?
  inputBinding:
    prefix: --min-intron-length
- id: in_max_intron_length
  doc: '<int>       [ default: 500000               ]'
  type: boolean?
  inputBinding:
    prefix: --max-intron-length
- id: in_max_multi_hits
  doc: '<int>       [ default: 20                   ]'
  type: boolean?
  inputBinding:
    prefix: --max-multihits
- id: in_transcriptome_max_hits
  doc: '<int>       [ default: 60                   ]'
  type: boolean?
  inputBinding:
    prefix: --transcriptome-max-hits
- id: in_prefilter_multi_hits
  doc: "( for -G/--GTF option, enable\nan initial bowtie search\nagainst the genome\
    \ )"
  type: boolean?
  inputBinding:
    prefix: --prefilter-multihits
- id: in_max_insertion_length
  doc: '<int>       [ default: 3                    ]'
  type: boolean?
  inputBinding:
    prefix: --max-insertion-length
- id: in_max_deletion_length
  doc: '<int>       [ default: 3                    ]'
  type: boolean?
  inputBinding:
    prefix: --max-deletion-length
- id: in_solexa_one_dot_three_quals
  doc: (same as phred64-quals)
  type: boolean?
  inputBinding:
    prefix: --solexa1.3-quals
- id: in_phred_six_four_quals
  doc: (same as solexa1.3-quals)
  type: boolean?
  inputBinding:
    prefix: --phred64-quals
- id: in_integer_quals
  doc: (Solid - color space)
  type: boolean?
  inputBinding:
    prefix: --integer-quals
- id: in_library_type
  doc: "<string>    (fr-unstranded, fr-firststrand,\nfr-secondstrand)"
  type: boolean?
  inputBinding:
    prefix: --library-type
- id: in_num_threads
  doc: '<int>       [ default: 1                   ]'
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_resume
  doc: <out_dir>   ( try to resume execution )
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_gtf
  doc: <filename>  (GTF/GFF with known transcripts)
  type: boolean?
  inputBinding:
    prefix: --GTF
- id: in_transcriptome_index
  doc: <bwtidx>    (transcriptome bowtie index)
  type: boolean?
  inputBinding:
    prefix: --transcriptome-index
- id: in_transcriptome_only
  doc: (map only to the transcriptome)
  type: boolean?
  inputBinding:
    prefix: --transcriptome-only
- id: in_raw_jun_cs
  doc: <filename>
  type: boolean?
  inputBinding:
    prefix: --raw-juncs
- id: in_insertions
  doc: <filename>
  type: boolean?
  inputBinding:
    prefix: --insertions
- id: in_deletions
  doc: <filename>
  type: boolean?
  inputBinding:
    prefix: --deletions
- id: in_mate_inner_dist
  doc: '<int>       [ default: 50                  ]'
  type: boolean?
  inputBinding:
    prefix: --mate-inner-dist
- id: in_mate_std_dev
  doc: '<int>       [ default: 20                  ]'
  type: boolean?
  inputBinding:
    prefix: --mate-std-dev
- id: in_no_coverage_search
  doc: '<dirname>   [ default: <output_dir>/tmp ]'
  type: boolean?
  inputBinding:
    prefix: --no-coverage-search
- id: in_z_packer
  doc: '<program>   [ default: gzip             ]'
  type: boolean?
  inputBinding:
    prefix: --zpacker
- id: in_unmapped_fifo
  doc: "[use mkfifo to compress more temporary\nfiles for color space reads]"
  type: boolean?
  inputBinding:
    prefix: --unmapped-fifo
- id: in_report_secondary_alignments
  doc: '<int>       [ default: 2                ]'
  type: boolean?
  inputBinding:
    prefix: --report-secondary-alignments
- id: in_segment_length
  doc: '<int>       [ default: 25               ]'
  type: boolean?
  inputBinding:
    prefix: --segment-length
- id: in_bowtie_n
  doc: '[ default: bowtie -v        ]'
  type: boolean?
  inputBinding:
    prefix: --bowtie-n
- id: in_min_coverage_intron
  doc: '<int>       [ default: 50               ]'
  type: boolean?
  inputBinding:
    prefix: --min-coverage-intron
- id: in_max_coverage_intron
  doc: '<int>       [ default: 20000            ]'
  type: boolean?
  inputBinding:
    prefix: --max-coverage-intron
- id: in_min_segment_intron
  doc: '<int>       [ default: 50               ]'
  type: boolean?
  inputBinding:
    prefix: --min-segment-intron
- id: in_max_segment_intron
  doc: '<int>       [ default: 500000           ]'
  type: boolean?
  inputBinding:
    prefix: --max-segment-intron
- id: in_no_sort_bam
  doc: (Output BAM is not coordinate-sorted)
  type: boolean?
  inputBinding:
    prefix: --no-sort-bam
- id: in_no_convert_bam
  doc: "(Do not output bam format.\nOutput is <output_dir>/accepted_hits.sam)"
  type: boolean?
  inputBinding:
    prefix: --no-convert-bam
- id: in_b_two_n
  doc: '<int>       [ default: 0                ]'
  type: boolean?
  inputBinding:
    prefix: --b2-N
- id: in_b_two_l
  doc: '<int>       [ default: 20               ]'
  type: boolean?
  inputBinding:
    prefix: --b2-L
- id: in_b_two_i
  doc: '<func>      [ default: S,1,1.25         ]'
  type: boolean?
  inputBinding:
    prefix: --b2-i
- id: in_b_two_n_ceil
  doc: '<func>      [ default: L,0,0.15         ]'
  type: boolean?
  inputBinding:
    prefix: --b2-n-ceil
- id: in_b_two_g_bar
  doc: '<int>       [ default: 4                ]'
  type: boolean?
  inputBinding:
    prefix: --b2-gbar
- id: in_b_two_mp
  doc: '<int>,<int> [ default: 6,2              ]'
  type: boolean?
  inputBinding:
    prefix: --b2-mp
- id: in_b_two_np
  doc: '<int>       [ default: 1                ]'
  type: boolean?
  inputBinding:
    prefix: --b2-np
- id: in_b_two_rdg
  doc: '<int>,<int> [ default: 5,3              ]'
  type: boolean?
  inputBinding:
    prefix: --b2-rdg
- id: in_b_two_rfg
  doc: '<int>,<int> [ default: 5,3              ]'
  type: boolean?
  inputBinding:
    prefix: --b2-rfg
- id: in_b_two_score_min
  doc: '<func>      [ default: L,-0.6,-0.6      ]'
  type: boolean?
  inputBinding:
    prefix: --b2-score-min
- id: in_b_two_d
  doc: '<int>       [ default: 15               ]'
  type: boolean?
  inputBinding:
    prefix: --b2-D
- id: in_b_two_r
  doc: '<int>       [ default: 2                ]'
  type: boolean?
  inputBinding:
    prefix: --b2-R
- id: in_fusion_anchor_length
  doc: '<int>       [ default: 20               ]'
  type: boolean?
  inputBinding:
    prefix: --fusion-anchor-length
- id: in_fusion_min_dist
  doc: '<int>       [ default: 10000000         ]'
  type: boolean?
  inputBinding:
    prefix: --fusion-min-dist
- id: in_fusion_read_mismatches
  doc: '<int>       [ default: 2                ]'
  type: boolean?
  inputBinding:
    prefix: --fusion-read-mismatches
- id: in_fusion_multi_reads
  doc: '<int>       [ default: 2                ]'
  type: boolean?
  inputBinding:
    prefix: --fusion-multireads
- id: in_fusion_multi_pairs
  doc: '<int>       [ default: 2                ]'
  type: boolean?
  inputBinding:
    prefix: --fusion-multipairs
- id: in_fusion_ignore_chromosomes
  doc: <list>      [ e.g, <chrM,chrX>          ]
  type: boolean?
  inputBinding:
    prefix: --fusion-ignore-chromosomes
- id: in_fusion_do_not_resolve_conflicts
  doc: '[this is for test purposes  ]'
  type: boolean?
  inputBinding:
    prefix: --fusion-do-not-resolve-conflicts
- id: in_rg_id
  doc: <string>    (read group ID)
  type: boolean?
  inputBinding:
    prefix: --rg-id
- id: in_rg_sample
  doc: <string>    (sample ID)
  type: boolean?
  inputBinding:
    prefix: --rg-sample
- id: in_rg_library
  doc: <string>    (library ID)
  type: boolean?
  inputBinding:
    prefix: --rg-library
- id: in_rg_description
  doc: <string>    (descriptive string, no tabs allowed)
  type: boolean?
  inputBinding:
    prefix: --rg-description
- id: in_rg_platform_unit
  doc: <string>    (e.g Illumina lane ID)
  type: boolean?
  inputBinding:
    prefix: --rg-platform-unit
- id: in_rg_center
  doc: <string>    (sequencing center name)
  type: boolean?
  inputBinding:
    prefix: --rg-center
- id: in_rg_date
  doc: <string>    (ISO 8601 date of the sequencing run)
  type: boolean?
  inputBinding:
    prefix: --rg-date
- id: in_rg_platform
  doc: <string>    (Sequencing platform descriptor)
  type: boolean?
  inputBinding:
    prefix: --rg-platform
- id: in_bowtie_index
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tophat
