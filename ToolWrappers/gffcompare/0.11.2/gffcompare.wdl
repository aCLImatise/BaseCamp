version 1.0

task Gffcompare {
  input {
    String? gffcompare_version_also
    Int? text_file_process
    File? annotation_file_gtfgff
    Boolean? strict_match
    String? consider_only_reference_transcripts_thatoverlap
    String? consider_only_input_transcripts_thatoverlap
    String? ignore_singleexon_transfrags
    String? ignore_singleexon_transcripts
    String? query_transfrags_sameintron
    String? stricter_duplicate_checking
    Boolean? no_merge
    File? genome_sequences_optional
    File? generate_tmap_files
    Int? distance_range_allowed
    Int? distance_range_grouping
    String? processing_mode_also
    Boolean? chr_stats
    Boolean? debug
    File? name_prefix_use
    String? matching_transfrags_gtf
    Int? discard_intronredundant_transfrags
    String? also_discard_transfrags
    String? c_slash_a_slash_x
  }
  command <<<
    gffcompare \
      ~{if defined(gffcompare_version_also) then ("-v " +  '"' + gffcompare_version_also + '"') else ""} \
      ~{if defined(text_file_process) then ("-i " +  '"' + text_file_process + '"') else ""} \
      ~{if defined(annotation_file_gtfgff) then ("-r " +  '"' + annotation_file_gtfgff + '"') else ""} \
      ~{if (strict_match) then "--strict-match" else ""} \
      ~{if defined(consider_only_reference_transcripts_thatoverlap) then ("-R " +  '"' + consider_only_reference_transcripts_thatoverlap + '"') else ""} \
      ~{if defined(consider_only_input_transcripts_thatoverlap) then ("-Q " +  '"' + consider_only_input_transcripts_thatoverlap + '"') else ""} \
      ~{if defined(ignore_singleexon_transfrags) then ("-M " +  '"' + ignore_singleexon_transfrags + '"') else ""} \
      ~{if defined(ignore_singleexon_transcripts) then ("-N " +  '"' + ignore_singleexon_transcripts + '"') else ""} \
      ~{if defined(query_transfrags_sameintron) then ("-D " +  '"' + query_transfrags_sameintron + '"') else ""} \
      ~{if defined(stricter_duplicate_checking) then ("-S " +  '"' + stricter_duplicate_checking + '"') else ""} \
      ~{if (no_merge) then "--no-merge" else ""} \
      ~{if defined(genome_sequences_optional) then ("-s " +  '"' + genome_sequences_optional + '"') else ""} \
      ~{if defined(generate_tmap_files) then ("-T " +  '"' + generate_tmap_files + '"') else ""} \
      ~{if defined(distance_range_allowed) then ("-e " +  '"' + distance_range_allowed + '"') else ""} \
      ~{if defined(distance_range_grouping) then ("-d " +  '"' + distance_range_grouping + '"') else ""} \
      ~{if defined(processing_mode_also) then ("-V " +  '"' + processing_mode_also + '"') else ""} \
      ~{if (chr_stats) then "--chr-stats" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(name_prefix_use) then ("-p " +  '"' + name_prefix_use + '"') else ""} \
      ~{if defined(matching_transfrags_gtf) then ("-C " +  '"' + matching_transfrags_gtf + '"') else ""} \
      ~{if defined(discard_intronredundant_transfrags) then ("-A " +  '"' + discard_intronredundant_transfrags + '"') else ""} \
      ~{if defined(also_discard_transfrags) then ("-X " +  '"' + also_discard_transfrags + '"') else ""} \
      ~{if defined(c_slash_a_slash_x) then ("-C/-A/-X " +  '"' + c_slash_a_slash_x + '"') else ""}
  >>>
  parameter_meta {
    gffcompare_version_also: "gffcompare version (also --version)"
    text_file_process: "a text file with a list of (query) GTF files to process instead\\nof expecting them as command line arguments (useful when a large number\\nof GTF files should be processed)"
    annotation_file_gtfgff: "annotation file (GTF/GFF)"
    strict_match: ": the match code '=' is only assigned when all exon boundaries\\nmatch; code '~' is assigned for intron chain match or single-exon"
    consider_only_reference_transcripts_thatoverlap: ", consider only the reference transcripts that\\noverlap any of the input transfrags (Sn correction)"
    consider_only_input_transcripts_thatoverlap: ", consider only the input transcripts that\\noverlap any of the reference transcripts (Precision correction);\\n(Warning: this will discard all \\\"novel\\\" loci!)"
    ignore_singleexon_transfrags: "(ignore) single-exon transfrags and reference transcripts"
    ignore_singleexon_transcripts: "(ignore) single-exon reference transcripts"
    query_transfrags_sameintron: "\\\"duplicate\\\" query transfrags (i.e. those with the same\\nintron chain) within a single sample (disable \\\"annotation\\\" mode)"
    stricter_duplicate_checking: ", but stricter duplicate checking: only discard matching query\\nor reference transcripts (same intron chain) if their boundaries are fully\\ncontained within other, larger or identical transfrags; if --strict-match\\nis also given, exact matching of all exon boundaries is required"
    no_merge: ": disable close-exon merging (default: merge exons separated by\\n\\\"introns\\\" shorter than 5 bases"
    genome_sequences_optional: "to genome sequences (optional); this can be either a multi-FASTA\\nfile or a directory containing single-fasta files (one for each contig);\\nrepeats must be soft-masked (lower case) in order to be able to classify\\ntransfrags as repeats"
    generate_tmap_files: "not generate .tmap and .refmap files for each input file"
    distance_range_allowed: "distance (range) allowed from free ends of terminal exons of\\nreference transcripts when assessing exon accuracy (100)"
    distance_range_grouping: "distance (range) for grouping transcript start sites (100)"
    processing_mode_also: "processing mode (also shows GFF parser warnings)"
    chr_stats: ": the .stats file will show summary and accuracy data\\nfor each reference contig/chromosome separately"
    debug: ": enables -V and generates additional files:\\n<outprefix>.Q_discarded.lst, <outprefix>.missed_introns.gff,\\n<outprefix>.R_missed.lst"
    name_prefix_use: "name prefix to use for consensus transcripts in the\\n<outprefix>.combined.gtf file (default: 'TCONS')"
    matching_transfrags_gtf: "matching and \\\"contained\\\" transfrags in the GTF output\\n(i.e. collapse intron-redundant transfrags across all query files)"
    discard_intronredundant_transfrags: "does not discard intron-redundant transfrags if they start\\nwith a different 5' exon (keep alternate TSS)"
    also_discard_transfrags: "also discard contained transfrags if transfrag ends stick out\\nwithin the container's introns"
    c_slash_a_slash_x: ", do NOT discard any redundant transfrag matching a reference"
  }
  output {
    File out_stdout = stdout()
  }
}