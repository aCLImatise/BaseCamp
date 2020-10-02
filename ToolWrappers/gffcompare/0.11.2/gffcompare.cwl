class: CommandLineTool
id: gffcompare.cwl
inputs:
- id: in_gffcompare_version_also
  doc: gffcompare version (also --version)
  type: string
  inputBinding:
    prefix: -v
- id: in_text_file_process
  doc: "a text file with a list of (query) GTF files to process instead\nof expecting\
    \ them as command line arguments (useful when a large number\nof GTF files should\
    \ be processed)"
  type: long
  inputBinding:
    prefix: -i
- id: in_annotation_file_gtfgff
  doc: annotation file (GTF/GFF)
  type: File
  inputBinding:
    prefix: -r
- id: in_strict_match
  doc: ": the match code '=' is only assigned when all exon boundaries\nmatch; code\
    \ '~' is assigned for intron chain match or single-exon"
  type: boolean
  inputBinding:
    prefix: --strict-match
- id: in_consider_only_reference_transcripts_thatoverlap
  doc: ", consider only the reference transcripts that\noverlap any of the input transfrags\
    \ (Sn correction)"
  type: string
  inputBinding:
    prefix: -R
- id: in_consider_only_input_transcripts_thatoverlap
  doc: ", consider only the input transcripts that\noverlap any of the reference transcripts\
    \ (Precision correction);\n(Warning: this will discard all \"novel\" loci!)"
  type: string
  inputBinding:
    prefix: -Q
- id: in_ignore_singleexon_transfrags
  doc: (ignore) single-exon transfrags and reference transcripts
  type: string
  inputBinding:
    prefix: -M
- id: in_ignore_singleexon_transcripts
  doc: (ignore) single-exon reference transcripts
  type: string
  inputBinding:
    prefix: -N
- id: in_query_transfrags_sameintron
  doc: "\"duplicate\" query transfrags (i.e. those with the same\nintron chain) within\
    \ a single sample (disable \"annotation\" mode)"
  type: string
  inputBinding:
    prefix: -D
- id: in_stricter_duplicate_checking
  doc: ", but stricter duplicate checking: only discard matching query\nor reference\
    \ transcripts (same intron chain) if their boundaries are fully\ncontained within\
    \ other, larger or identical transfrags; if --strict-match\nis also given, exact\
    \ matching of all exon boundaries is required"
  type: string
  inputBinding:
    prefix: -S
- id: in_no_merge
  doc: ": disable close-exon merging (default: merge exons separated by\n\"introns\"\
    \ shorter than 5 bases"
  type: boolean
  inputBinding:
    prefix: --no-merge
- id: in_genome_sequences_optional
  doc: "to genome sequences (optional); this can be either a multi-FASTA\nfile or\
    \ a directory containing single-fasta files (one for each contig);\nrepeats must\
    \ be soft-masked (lower case) in order to be able to classify\ntransfrags as repeats"
  type: File
  inputBinding:
    prefix: -s
- id: in_generate_tmap_files
  doc: not generate .tmap and .refmap files for each input file
  type: File
  inputBinding:
    prefix: -T
- id: in_distance_range_allowed
  doc: "distance (range) allowed from free ends of terminal exons of\nreference transcripts\
    \ when assessing exon accuracy (100)"
  type: long
  inputBinding:
    prefix: -e
- id: in_distance_range_grouping
  doc: distance (range) for grouping transcript start sites (100)
  type: long
  inputBinding:
    prefix: -d
- id: in_processing_mode_also
  doc: processing mode (also shows GFF parser warnings)
  type: string
  inputBinding:
    prefix: -V
- id: in_chr_stats
  doc: ": the .stats file will show summary and accuracy data\nfor each reference\
    \ contig/chromosome separately"
  type: boolean
  inputBinding:
    prefix: --chr-stats
- id: in_debug
  doc: ": enables -V and generates additional files:\n<outprefix>.Q_discarded.lst,\
    \ <outprefix>.missed_introns.gff,\n<outprefix>.R_missed.lst"
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_name_prefix_use
  doc: "name prefix to use for consensus transcripts in the\n<outprefix>.combined.gtf\
    \ file (default: 'TCONS')"
  type: File
  inputBinding:
    prefix: -p
- id: in_matching_transfrags_gtf
  doc: "matching and \"contained\" transfrags in the GTF output\n(i.e. collapse intron-redundant\
    \ transfrags across all query files)"
  type: string
  inputBinding:
    prefix: -C
- id: in_discard_intronredundant_transfrags
  doc: "does not discard intron-redundant transfrags if they start\nwith a different\
    \ 5' exon (keep alternate TSS)"
  type: long
  inputBinding:
    prefix: -A
- id: in_also_discard_transfrags
  doc: "also discard contained transfrags if transfrag ends stick out\nwithin the\
    \ container's introns"
  type: string
  inputBinding:
    prefix: -X
- id: in_c_slash_a_slash_x
  doc: ', do NOT discard any redundant transfrag matching a reference'
  type: string
  inputBinding:
    prefix: -C/-A/-X
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gffcompare
