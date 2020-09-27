version 1.0

task Tophat {
  input {
    Boolean? v_slash_version
    Boolean? report_secondary_alignments
    Boolean? b_two_i
    Boolean? b_two_n_ceil
    Boolean? b_two_mp
    Boolean? b_two_rdg
    Boolean? b_two_rfg
    Boolean? b_two_score_min
    Boolean? fusion_search
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
      ~{if (v_slash_version) then "-v/--version" else ""} \
      ~{if (report_secondary_alignments) then "--report-secondary-alignments" else ""} \
      ~{if (b_two_i) then "--b2-i" else ""} \
      ~{if (b_two_n_ceil) then "--b2-n-ceil" else ""} \
      ~{if (b_two_mp) then "--b2-mp" else ""} \
      ~{if (b_two_rdg) then "--b2-rdg" else ""} \
      ~{if (b_two_rfg) then "--b2-rfg" else ""} \
      ~{if (b_two_score_min) then "--b2-score-min" else ""} \
      ~{if (fusion_search) then "--fusion-search" else ""} \
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
    v_slash_version: "-o/--output-dir                <string>    [ default: ./tophat_out         ]\\n--bowtie1                                  [ default: bowtie2              ]\\n-N/--read-mismatches           <int>       [ default: 2                    ]\\n--read-gap-length              <int>       [ default: 2                    ]\\n--read-edit-dist               <int>       [ default: 2                    ]\\n--read-realign-edit-dist       <int>       [ default: \\\"read-edit-dist\\\" + 1 ]\\n-a/--min-anchor                <int>       [ default: 8                    ]\\n-m/--splice-mismatches         <0-2>       [ default: 0                    ]\\n-i/--min-intron-length         <int>       [ default: 50                   ]\\n-I/--max-intron-length         <int>       [ default: 500000               ]\\n-g/--max-multihits             <int>       [ default: 20                   ]\\n--suppress-hits\\n-x/--transcriptome-max-hits    <int>       [ default: 60                   ]\\n-M/--prefilter-multihits                   ( for -G/--GTF option, enable\\nan initial bowtie search\\nagainst the genome )\\n--max-insertion-length         <int>       [ default: 3                    ]\\n--max-deletion-length          <int>       [ default: 3                    ]\\n--solexa-quals\\n--solexa1.3-quals                          (same as phred64-quals)\\n--phred64-quals                            (same as solexa1.3-quals)\\n-Q/--quals\\n--integer-quals\\n-C/--color                                 (Solid - color space)\\n--color-out\\n--library-type                 <string>    (fr-unstranded, fr-firststrand,\\nfr-secondstrand)\\n-p/--num-threads               <int>       [ default: 1                   ]\\n-R/--resume                    <out_dir>   ( try to resume execution )\\n-G/--GTF                       <filename>  (GTF/GFF with known transcripts)\\n--transcriptome-index          <bwtidx>    (transcriptome bowtie index)\\n-T/--transcriptome-only                    (map only to the transcriptome)\\n-j/--raw-juncs                 <filename>\\n--insertions                   <filename>\\n--deletions                    <filename>\\n-r/--mate-inner-dist           <int>       [ default: 50                  ]\\n--mate-std-dev                 <int>       [ default: 20                  ]\\n--no-novel-juncs\\n--no-novel-indels\\n--no-gtf-juncs\\n--no-coverage-search\\n--coverage-search\\n--microexon-search\\n--keep-tmp\\n--tmp-dir                      <dirname>   [ default: <output_dir>/tmp ]\\n-z/--zpacker                   <program>   [ default: gzip             ]\\n-X/--unmapped-fifo                         [use mkfifo to compress more temporary\\nfiles for color space reads]"
    report_secondary_alignments: "--no-discordant\\n--no-mixed\\n--segment-mismatches           <int>       [ default: 2                ]\\n--segment-length               <int>       [ default: 25               ]\\n--bowtie-n                                 [ default: bowtie -v        ]\\n--min-coverage-intron          <int>       [ default: 50               ]\\n--max-coverage-intron          <int>       [ default: 20000            ]\\n--min-segment-intron           <int>       [ default: 50               ]\\n--max-segment-intron           <int>       [ default: 500000           ]\\n--no-sort-bam                              (Output BAM is not coordinate-sorted)\\n--no-convert-bam                           (Do not output bam format.\\nOutput is <output_dir>/accepted_hits.sam)\\n--keep-fasta-order\\n--allow-partial-mapping"
    b_two_i: "<func>      [ default: S,1,1.25         ]"
    b_two_n_ceil: "<func>      [ default: L,0,0.15         ]"
    b_two_mp: "<int>,<int> [ default: 6,2              ]"
    b_two_rdg: "<int>,<int> [ default: 5,3              ]"
    b_two_rfg: "<int>,<int> [ default: 5,3              ]"
    b_two_score_min: "<func>      [ default: L,-0.6,-0.6      ]"
    fusion_search: "--fusion-anchor-length         <int>       [ default: 20               ]\\n--fusion-min-dist              <int>       [ default: 10000000         ]\\n--fusion-read-mismatches       <int>       [ default: 2                ]\\n--fusion-multireads            <int>       [ default: 2                ]\\n--fusion-multipairs            <int>       [ default: 2                ]\\n--fusion-ignore-chromosomes    <list>      [ e.g, <chrM,chrX>          ]\\n--fusion-do-not-resolve-conflicts          [this is for test purposes  ]"
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