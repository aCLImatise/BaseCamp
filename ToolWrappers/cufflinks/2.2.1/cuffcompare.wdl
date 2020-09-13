version 1.0

task Cuffcompare {
  input {
    Int? text_file_process
    String? set_known_use
    String? consider_only_reference_transcripts_thatoverlap
    String? consider_only_input_transcripts_thatoverlap
    String? ignore_singleexon_transfrags
    String? ignore_singleexon_transcripts
    File? can_multifasta_file
    Int? distance_range_allowed
    Int? distance_range_grouping
    File? name_prefix_use
    File? transcripts_combinedgtf_file
    Int? discard_intronredundant_transfrags
    File? gff_input_files
    File? generate_tmap_files
    String? processing_mode_showing
  }
  command <<<
    cuffcompare \
      ~{if defined(text_file_process) then ("-i " +  '"' + text_file_process + '"') else ""} \
      ~{if defined(set_known_use) then ("-r " +  '"' + set_known_use + '"') else ""} \
      ~{if defined(consider_only_reference_transcripts_thatoverlap) then ("-R " +  '"' + consider_only_reference_transcripts_thatoverlap + '"') else ""} \
      ~{if defined(consider_only_input_transcripts_thatoverlap) then ("-Q " +  '"' + consider_only_input_transcripts_thatoverlap + '"') else ""} \
      ~{if defined(ignore_singleexon_transfrags) then ("-M " +  '"' + ignore_singleexon_transfrags + '"') else ""} \
      ~{if defined(ignore_singleexon_transcripts) then ("-N " +  '"' + ignore_singleexon_transcripts + '"') else ""} \
      ~{if defined(can_multifasta_file) then ("-s " +  '"' + can_multifasta_file + '"') else ""} \
      ~{if defined(distance_range_allowed) then ("-e " +  '"' + distance_range_allowed + '"') else ""} \
      ~{if defined(distance_range_grouping) then ("-d " +  '"' + distance_range_grouping + '"') else ""} \
      ~{if defined(name_prefix_use) then ("-p " +  '"' + name_prefix_use + '"') else ""} \
      ~{if defined(transcripts_combinedgtf_file) then ("-C " +  '"' + transcripts_combinedgtf_file + '"') else ""} \
      ~{if defined(discard_intronredundant_transfrags) then ("-F " +  '"' + discard_intronredundant_transfrags + '"') else ""} \
      ~{if defined(gff_input_files) then ("-G " +  '"' + gff_input_files + '"') else ""} \
      ~{if defined(generate_tmap_files) then ("-T " +  '"' + generate_tmap_files + '"') else ""} \
      ~{if defined(processing_mode_showing) then ("-V " +  '"' + processing_mode_showing + '"') else ""}
  >>>
  parameter_meta {
    text_file_process: "a text file with a list of Cufflinks GTF files to process instead\\nof expecting them as command line arguments (useful when a large number\\nof GTF files should be processed)"
    set_known_use: "set of known mRNAs to use as a reference for assessing\\nthe accuracy of mRNAs or gene models given in <input.gtf>"
    consider_only_reference_transcripts_thatoverlap: ", consider only the reference transcripts that\\noverlap any of the input transfrags (Sn correction)"
    consider_only_input_transcripts_thatoverlap: ", consider only the input transcripts that\\noverlap any of the reference transcripts (Sp correction);\\n(Warning: this will discard all \\\"novel\\\" loci!)"
    ignore_singleexon_transfrags: "(ignore) single-exon transfrags and reference transcripts"
    ignore_singleexon_transcripts: "(ignore) single-exon reference transcripts"
    can_multifasta_file: "can be a multi-fasta file with all the genomic sequences or\\na directory containing multiple single-fasta files (one file per contig);\\nlower case bases will be used to classify input transcripts as repeats"
    distance_range_allowed: "distance (range) allowed from free ends of terminal exons of reference\\ntranscripts when assessing exon accuracy (100)"
    distance_range_grouping: "distance (range) for grouping transcript start sites (100)"
    name_prefix_use: "name prefix to use for consensus transcripts in the\\n<outprefix>.combined.gtf file (default: 'TCONS')"
    transcripts_combinedgtf_file: "the \\\"contained\\\" transcripts in the .combined.gtf file"
    discard_intronredundant_transfrags: "not discard intron-redundant transfrags if they share the 5' end\\n(if they differ only at the 3' end))"
    gff_input_files: "GFF input file(s): do not assume Cufflinks GTF, do not\\ndiscard any intron-redundant transfrags)"
    generate_tmap_files: "not generate .tmap and .refmap files for each input file"
    processing_mode_showing: "processing mode (showing all GFF parsing warnings)"
  }
  output {
    File out_stdout = stdout()
  }
}