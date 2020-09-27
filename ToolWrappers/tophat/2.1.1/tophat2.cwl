class: CommandLineTool
id: tophat2.cwl
inputs:
- id: in_v_slash_version
  doc: "-o/--output-dir                <string>    [ default: ./tophat_out       \
    \  ]\n--bowtie1                                  [ default: bowtie2          \
    \    ]\n-N/--read-mismatches           <int>       [ default: 2              \
    \      ]\n--read-gap-length              <int>       [ default: 2            \
    \        ]\n--read-edit-dist               <int>       [ default: 2          \
    \          ]\n--read-realign-edit-dist       <int>       [ default: \"read-edit-dist\"\
    \ + 1 ]\n-a/--min-anchor                <int>       [ default: 8             \
    \       ]\n-m/--splice-mismatches         <0-2>       [ default: 0           \
    \         ]\n-i/--min-intron-length         <int>       [ default: 50        \
    \           ]\n-I/--max-intron-length         <int>       [ default: 500000  \
    \             ]\n-g/--max-multihits             <int>       [ default: 20    \
    \               ]\n--suppress-hits\n-x/--transcriptome-max-hits    <int>     \
    \  [ default: 60                   ]\n-M/--prefilter-multihits               \
    \    ( for -G/--GTF option, enable\nan initial bowtie search\nagainst the genome\
    \ )\n--max-insertion-length         <int>       [ default: 3                 \
    \   ]\n--max-deletion-length          <int>       [ default: 3               \
    \     ]\n--solexa-quals\n--solexa1.3-quals                          (same as phred64-quals)\n\
    --phred64-quals                            (same as solexa1.3-quals)\n-Q/--quals\n\
    --integer-quals\n-C/--color                                 (Solid - color space)\n\
    --color-out\n--library-type                 <string>    (fr-unstranded, fr-firststrand,\n\
    fr-secondstrand)\n-p/--num-threads               <int>       [ default: 1    \
    \               ]\n-R/--resume                    <out_dir>   ( try to resume\
    \ execution )\n-G/--GTF                       <filename>  (GTF/GFF with known\
    \ transcripts)\n--transcriptome-index          <bwtidx>    (transcriptome bowtie\
    \ index)\n-T/--transcriptome-only                    (map only to the transcriptome)\n\
    -j/--raw-juncs                 <filename>\n--insertions                   <filename>\n\
    --deletions                    <filename>\n-r/--mate-inner-dist           <int>\
    \       [ default: 50                  ]\n--mate-std-dev                 <int>\
    \       [ default: 20                  ]\n--no-novel-juncs\n--no-novel-indels\n\
    --no-gtf-juncs\n--no-coverage-search\n--coverage-search\n--microexon-search\n\
    --keep-tmp\n--tmp-dir                      <dirname>   [ default: <output_dir>/tmp\
    \ ]\n-z/--zpacker                   <program>   [ default: gzip             ]\n\
    -X/--unmapped-fifo                         [use mkfifo to compress more temporary\n\
    files for color space reads]"
  type: boolean
  inputBinding:
    prefix: -v/--version
- id: in_report_secondary_alignments
  doc: "--no-discordant\n--no-mixed\n--segment-mismatches           <int>       [\
    \ default: 2                ]\n--segment-length               <int>       [ default:\
    \ 25               ]\n--bowtie-n                                 [ default: bowtie\
    \ -v        ]\n--min-coverage-intron          <int>       [ default: 50      \
    \         ]\n--max-coverage-intron          <int>       [ default: 20000     \
    \       ]\n--min-segment-intron           <int>       [ default: 50          \
    \     ]\n--max-segment-intron           <int>       [ default: 500000        \
    \   ]\n--no-sort-bam                              (Output BAM is not coordinate-sorted)\n\
    --no-convert-bam                           (Do not output bam format.\nOutput\
    \ is <output_dir>/accepted_hits.sam)\n--keep-fasta-order\n--allow-partial-mapping"
  type: boolean
  inputBinding:
    prefix: --report-secondary-alignments
- id: in_b_two_i
  doc: '<func>      [ default: S,1,1.25         ]'
  type: boolean
  inputBinding:
    prefix: --b2-i
- id: in_b_two_n_ceil
  doc: '<func>      [ default: L,0,0.15         ]'
  type: boolean
  inputBinding:
    prefix: --b2-n-ceil
- id: in_b_two_mp
  doc: '<int>,<int> [ default: 6,2              ]'
  type: boolean
  inputBinding:
    prefix: --b2-mp
- id: in_b_two_rdg
  doc: '<int>,<int> [ default: 5,3              ]'
  type: boolean
  inputBinding:
    prefix: --b2-rdg
- id: in_b_two_rfg
  doc: '<int>,<int> [ default: 5,3              ]'
  type: boolean
  inputBinding:
    prefix: --b2-rfg
- id: in_b_two_score_min
  doc: '<func>      [ default: L,-0.6,-0.6      ]'
  type: boolean
  inputBinding:
    prefix: --b2-score-min
- id: in_fusion_search
  doc: "--fusion-anchor-length         <int>       [ default: 20               ]\n\
    --fusion-min-dist              <int>       [ default: 10000000         ]\n--fusion-read-mismatches\
    \       <int>       [ default: 2                ]\n--fusion-multireads       \
    \     <int>       [ default: 2                ]\n--fusion-multipairs         \
    \   <int>       [ default: 2                ]\n--fusion-ignore-chromosomes   \
    \ <list>      [ e.g, <chrM,chrX>          ]\n--fusion-do-not-resolve-conflicts\
    \          [this is for test purposes  ]"
  type: boolean
  inputBinding:
    prefix: --fusion-search
- id: in_rg_id
  doc: <string>    (read group ID)
  type: boolean
  inputBinding:
    prefix: --rg-id
- id: in_rg_sample
  doc: <string>    (sample ID)
  type: boolean
  inputBinding:
    prefix: --rg-sample
- id: in_rg_library
  doc: <string>    (library ID)
  type: boolean
  inputBinding:
    prefix: --rg-library
- id: in_rg_description
  doc: <string>    (descriptive string, no tabs allowed)
  type: boolean
  inputBinding:
    prefix: --rg-description
- id: in_rg_platform_unit
  doc: <string>    (e.g Illumina lane ID)
  type: boolean
  inputBinding:
    prefix: --rg-platform-unit
- id: in_rg_center
  doc: <string>    (sequencing center name)
  type: boolean
  inputBinding:
    prefix: --rg-center
- id: in_rg_date
  doc: <string>    (ISO 8601 date of the sequencing run)
  type: boolean
  inputBinding:
    prefix: --rg-date
- id: in_rg_platform
  doc: <string>    (Sequencing platform descriptor)
  type: boolean
  inputBinding:
    prefix: --rg-platform
- id: in_top_hat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bowtie_index
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tophat2
