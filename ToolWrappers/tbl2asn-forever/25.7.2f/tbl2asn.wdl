version 1.0

task Tbl2asn {
  input {
    Boolean? path_files_optional
    Boolean? path_results_optional
    Boolean? single_input_file
    File? single_output_file
    Boolean? suffix__optionaldefault
    Boolean? recurse_optionaldefault_f
    Boolean? template_file_optional
    Boolean? file_typea_anyru
    Boolean? read_fastas_optionaldefault
    Boolean? genomic_product_set
    Boolean? delayed_genomic_product
    Boolean? feature_id_linkso
    Boolean? accession__optional
    Boolean? genome_center_tag
    Boolean? organism_name_optional
    Boolean? source_qualifiers_optional
    Boolean? comment__optional
    Boolean? comment_file_optional
    Boolean? descriptors_file_optional
    Boolean? single_table_file
    Boolean? cds_flags_combine
    Boolean? verification_combine_following
    Boolean? validate_use_v
    Boolean? generate_genbank_file
    Boolean? seq_id_file
    Boolean? genprodset_nucprotset_optionaldefault
    Boolean? alignment_gap_flags
    Boolean? remote_sequence_record
    Boolean? smart_feature_annotation
    Boolean? mrna_title_policys
    Boolean? remove_unnecessary_gene
    Boolean? force_local_proteinidtranscriptid
    Boolean? remote_taxonomy_lookup
    Boolean? remote_publication_lookup
    Boolean? log_progress_optionaldefault
    Boolean? save_bioseqset_optionaldefault
    Boolean? hold_publishy_hold
    File? discrepancy_report_output
    Boolean? cleanup_combine_following
    File? cleanup_log_file
    Boolean? extra_flags_combine
    Boolean? project_version_number
    Boolean? single_structured_comment
    Boolean? master_genome_flagsn
    Boolean? add_type_used
    Boolean? lineage_use_discrepancy
    String paired_ends
    String align_x_genus
    String within_clone
    String strobe
  }
  command <<<
    tbl2asn \
      ~{paired_ends} \
      ~{align_x_genus} \
      ~{within_clone} \
      ~{strobe} \
      ~{if (path_files_optional) then "-p" else ""} \
      ~{if (path_results_optional) then "-r" else ""} \
      ~{if (single_input_file) then "-i" else ""} \
      ~{if (single_output_file) then "-o" else ""} \
      ~{if (suffix__optionaldefault) then "-x" else ""} \
      ~{if (recurse_optionaldefault_f) then "-E" else ""} \
      ~{if (template_file_optional) then "-t" else ""} \
      ~{if (file_typea_anyru) then "-a" else ""} \
      ~{if (read_fastas_optionaldefault) then "-s" else ""} \
      ~{if (genomic_product_set) then "-g" else ""} \
      ~{if (delayed_genomic_product) then "-J" else ""} \
      ~{if (feature_id_linkso) then "-F" else ""} \
      ~{if (accession__optional) then "-A" else ""} \
      ~{if (genome_center_tag) then "-C" else ""} \
      ~{if (organism_name_optional) then "-n" else ""} \
      ~{if (source_qualifiers_optional) then "-j" else ""} \
      ~{if (comment__optional) then "-y" else ""} \
      ~{if (comment_file_optional) then "-Y" else ""} \
      ~{if (descriptors_file_optional) then "-D" else ""} \
      ~{if (single_table_file) then "-f" else ""} \
      ~{if (cds_flags_combine) then "-k" else ""} \
      ~{if (verification_combine_following) then "-V" else ""} \
      ~{if (validate_use_v) then "-v" else ""} \
      ~{if (generate_genbank_file) then "-b" else ""} \
      ~{if (seq_id_file) then "-q" else ""} \
      ~{if (genprodset_nucprotset_optionaldefault) then "-u" else ""} \
      ~{if (alignment_gap_flags) then "-G" else ""} \
      ~{if (remote_sequence_record) then "-R" else ""} \
      ~{if (smart_feature_annotation) then "-S" else ""} \
      ~{if (mrna_title_policys) then "-Q" else ""} \
      ~{if (remove_unnecessary_gene) then "-U" else ""} \
      ~{if (force_local_proteinidtranscriptid) then "-L" else ""} \
      ~{if (remote_taxonomy_lookup) then "-T" else ""} \
      ~{if (remote_publication_lookup) then "-P" else ""} \
      ~{if (log_progress_optionaldefault) then "-W" else ""} \
      ~{if (save_bioseqset_optionaldefault) then "-K" else ""} \
      ~{if (hold_publishy_hold) then "-H" else ""} \
      ~{if (discrepancy_report_output) then "-Z" else ""} \
      ~{if (cleanup_combine_following) then "-c" else ""} \
      ~{if (cleanup_log_file) then "-z" else ""} \
      ~{if (extra_flags_combine) then "-X" else ""} \
      ~{if (project_version_number) then "-N" else ""} \
      ~{if (single_structured_comment) then "-w" else ""} \
      ~{if (master_genome_flagsn) then "-M" else ""} \
      ~{if (add_type_used) then "-l" else ""} \
      ~{if (lineage_use_discrepancy) then "-m" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tbl2asn-forever:25.7.2f--h516909a_0"
  }
  parameter_meta {
    path_files_optional: "Path to Files [String]  Optional"
    path_results_optional: "Path for Results [String]  Optional"
    single_input_file: "Single Input File [File In]  Optional"
    single_output_file: "Single Output File [File Out]  Optional"
    suffix__optionaldefault: "Suffix [String]  Optional\\ndefault = .fsa"
    recurse_optionaldefault_f: "Recurse [T/F]  Optional\\ndefault = F"
    template_file_optional: "Template File [File In]  Optional"
    file_typea_anyru: "File Type\\na Any\\nr20u Runs of 20+ Ns are gaps, 100 Ns are unknown length\\nr20k Runs of 20+ Ns are gaps, 100 Ns are known length\\nr10u Runs of 10+ Ns are gaps, 100 Ns are unknown length\\nr10k Runs of 10+ Ns are gaps, 100 Ns are known length\\ns FASTA Set (s Batch, s1 Pop, s2 Phy, s3 Mut, s4 Eco, s9 Small-genome)\\nd FASTA Delta, di FASTA Delta with Implicit Gaps\\nl FASTA+Gap Alignment (l Batch, l1 Pop, l2 Phy, l3 Mut, l4 Eco, l9 Small-genome)\\nz FASTA with Gap Lines\\ne PHRAP/ACE\\nb ASN.1 for -M flag"
    read_fastas_optionaldefault: "Read FASTAs as Set [T/F]  Optional\\ndefault = F"
    genomic_product_set: "Genomic Product Set [T/F]  Optional\\ndefault = F"
    delayed_genomic_product: "Delayed Genomic Product Set [T/F]  Optional\\ndefault = F"
    feature_id_linkso: "Feature ID Links\\no By Overlap\\np By Product\\nl By Label and Location\\ns Suppress links forced by -M"
    accession__optional: "Accession [String]  Optional"
    genome_center_tag: "Genome Center Tag [String]  Optional"
    organism_name_optional: "Organism Name [String]  Optional"
    source_qualifiers_optional: "Source Qualifiers [String]  Optional"
    comment__optional: "Comment [String]  Optional"
    comment_file_optional: "Comment File [File In]  Optional"
    descriptors_file_optional: "Descriptors File [File In]  Optional"
    single_table_file: "Single Table File [File In]  Optional"
    cds_flags_combine: "CDS Flags (combine any of the following letters)\\nc Annotate Longest ORF\\nr Allow Runon ORFs\\nm Allow Alternative Starts\\nk Set Conflict on Mismatch"
    verification_combine_following: "Verification (combine any of the following letters)\\nv Validate with Normal Stringency\\nr Validate without Country Check\\nc BarCode Validation\\nb Generate GenBank Flatfile\\ng Generate Gene Report\\nt Validate with TSA Check"
    validate_use_v: "Validate (obsolete: use -V v) [T/F]  Optional\\ndefault = F"
    generate_genbank_file: "Generate GenBank File (obsolete: use -V b) [T/F]  Optional\\ndefault = F"
    seq_id_file: "Seq ID from File Name [T/F]  Optional\\ndefault = F"
    genprodset_nucprotset_optionaldefault: "GenProdSet to NucProtSet [T/F]  Optional\\ndefault = F"
    alignment_gap_flags: "Alignment Gap Flags (comma separated fields, e.g., p,-,-,-,?,. )\\nn Nucleotide or p Protein,\\nBegin, Middle, End Gap Characters,\\nMissing Characters, Match Characters"
    remote_sequence_record: "Remote Sequence Record Fetching from ID [T/F]  Optional\\ndefault = F"
    smart_feature_annotation: "Smart Feature Annotation [T/F]  Optional\\ndefault = F"
    mrna_title_policys: "mRNA Title Policy\\ns Special mRNA Titles\\nr RefSeq mRNA Titles"
    remove_unnecessary_gene: "Remove Unnecessary Gene Xref [T/F]  Optional\\ndefault = F"
    force_local_proteinidtranscriptid: "Force Local protein_id/transcript_id [T/F]  Optional\\ndefault = F"
    remote_taxonomy_lookup: "Remote Taxonomy Lookup [T/F]  Optional\\ndefault = F"
    remote_publication_lookup: "Remote Publication Lookup [T/F]  Optional\\ndefault = F"
    log_progress_optionaldefault: "Log Progress [T/F]  Optional\\ndefault = F"
    save_bioseqset_optionaldefault: "Save Bioseq-set [T/F]  Optional\\ndefault = F"
    hold_publishy_hold: "Hold Until Publish\\ny Hold for One Year\\nmm/dd/yyyy"
    discrepancy_report_output: "Discrepancy Report Output File [File Out]  Optional"
    cleanup_combine_following: "Cleanup (combine any of the following letters)\\nd Correct Collection Dates (assume month first)\\nD Correct Collection Dates (assume day first)\\nb Append note to coding regions that overlap other coding regions with similar product names and do not contain 'ABC'\\nx Extend partial ends of features by one or two nucleotides to abut gaps or sequence ends\\np Add exception to non-extendable partials\\ns Add exception to short introns\\nf Fix product names"
    cleanup_log_file: "Cleanup Log File [File Out]  Optional"
    extra_flags_combine: "Extra Flags (combine any of the following letters)\\nA Automatic definition line generator\\nC Apply comments in .cmt files to all sequences\\nE Treat like eukaryota in the Discrepancy Report"
    project_version_number: "Project Version Number [Integer]  Optional\\ndefault = 0"
    single_structured_comment: "Single Structured Comment File (overrides the use of -X C) [File In]  Optional"
    master_genome_flagsn: "Master Genome Flags\\nn Normal\\nb Big Sequence\\np Power Option\\nt TSA"
    add_type_used: "Add type of evidence used to assert linkage across assembly gaps (only for TSA records). Must be one of the following:"
    lineage_use_discrepancy: "Lineage to use for Discrepancy Report tests"
    paired_ends: "align-genus"
    align_x_genus: "align-trnscpt"
    within_clone: "clone-contig"
    strobe: "strobe"
  }
  output {
    File out_stdout = stdout()
    File out_single_output_file = "${in_single_output_file}"
    File out_discrepancy_report_output = "${in_discrepancy_report_output}"
    File out_cleanup_log_file = "${in_cleanup_log_file}"
  }
}