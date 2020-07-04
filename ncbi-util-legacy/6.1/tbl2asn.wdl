version 1.0

task Tbl2asn {
  input {
    Boolean? template_file_optional
    Boolean? file_type_runs
    Boolean? feature_id_links
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
    Boolean? alignment_gap_flags
    Boolean? title_policy_special
    Boolean? hold_publish_y
    Boolean? discrepancy_report_output
    Boolean? cleanup_combine_assume
    Boolean? cleanup_log_file
    Boolean? extra_flags_combine
    Boolean? single_structured_comment
    Boolean? master_genome_flags
    Boolean? add_type_evidence
    Boolean? lineage_use_discrepancy
  }
  command <<<
    tbl2asn \
      ~{true="-t" false="" template_file_optional} \
      ~{true="-a" false="" file_type_runs} \
      ~{true="-F" false="" feature_id_links} \
      ~{true="-A" false="" accession__optional} \
      ~{true="-C" false="" genome_center_tag} \
      ~{true="-n" false="" organism_name_optional} \
      ~{true="-j" false="" source_qualifiers_optional} \
      ~{true="-y" false="" comment__optional} \
      ~{true="-Y" false="" comment_file_optional} \
      ~{true="-D" false="" descriptors_file_optional} \
      ~{true="-f" false="" single_table_file} \
      ~{true="-k" false="" cds_flags_combine} \
      ~{true="-V" false="" verification_combine_following} \
      ~{true="-G" false="" alignment_gap_flags} \
      ~{true="-Q" false="" title_policy_special} \
      ~{true="-H" false="" hold_publish_y} \
      ~{true="-Z" false="" discrepancy_report_output} \
      ~{true="-c" false="" cleanup_combine_assume} \
      ~{true="-z" false="" cleanup_log_file} \
      ~{true="-X" false="" extra_flags_combine} \
      ~{true="-w" false="" single_structured_comment} \
      ~{true="-M" false="" master_genome_flags} \
      ~{true="-l" false="" add_type_evidence} \
      ~{true="-m" false="" lineage_use_discrepancy}
  >>>
  parameter_meta {
    template_file_optional: "Template File [File In]  Optional"
    file_type_runs: "File Type a Any r20u Runs of 20+ Ns are gaps, 100 Ns are unknown length r20k Runs of 20+ Ns are gaps, 100 Ns are known length r10u Runs of 10+ Ns are gaps, 100 Ns are unknown length r10k Runs of 10+ Ns are gaps, 100 Ns are known length s FASTA Set (s Batch, s1 Pop, s2 Phy, s3 Mut, s4 Eco, s9 Small-genome) d FASTA Delta, di FASTA Delta with Implicit Gaps l FASTA+Gap Alignment (l Batch, l1 Pop, l2 Phy, l3 Mut, l4 Eco, l9 Small-genome) z FASTA with Gap Lines e PHRAP/ACE b ASN.1 for -M flag"
    feature_id_links: "Feature ID Links o By Overlap p By Product l By Label and Location s Suppress links forced by -M"
    accession__optional: "Accession [String]  Optional"
    genome_center_tag: "Genome Center Tag [String]  Optional"
    organism_name_optional: "Organism Name [String]  Optional"
    source_qualifiers_optional: "Source Qualifiers [String]  Optional"
    comment__optional: "Comment [String]  Optional"
    comment_file_optional: "Comment File [File In]  Optional"
    descriptors_file_optional: "Descriptors File [File In]  Optional"
    single_table_file: "Single Table File [File In]  Optional"
    cds_flags_combine: "CDS Flags (combine any of the following letters) c Annotate Longest ORF r Allow Runon ORFs m Allow Alternative Starts k Set Conflict on Mismatch"
    verification_combine_following: "Verification (combine any of the following letters) v Validate with Normal Stringency r Validate without Country Check c BarCode Validation b Generate GenBank Flatfile g Generate Gene Report t Validate with TSA Check"
    alignment_gap_flags: "Alignment Gap Flags (comma separated fields, e.g., p,-,-,-,?,. ) n Nucleotide or p Protein, Begin, Middle, End Gap Characters, Missing Characters, Match Characters"
    title_policy_special: "mRNA Title Policy s Special mRNA Titles r RefSeq mRNA Titles"
    hold_publish_y: "Hold Until Publish y Hold for One Year mm/dd/yyyy"
    discrepancy_report_output: "Discrepancy Report Output File [File Out]  Optional"
    cleanup_combine_assume: "Cleanup (combine any of the following letters) d Correct Collection Dates (assume month first) D Correct Collection Dates (assume day first) b Append note to coding regions that overlap other coding regions with similar product names and do not contain 'ABC' x Extend partial ends of features by one or two nucleotides to abut gaps or sequence ends p Add exception to non-extendable partials s Add exception to short introns f Fix product names"
    cleanup_log_file: "Cleanup Log File [File Out]  Optional"
    extra_flags_combine: "Extra Flags (combine any of the following letters) A Automatic definition line generator C Apply comments in .cmt files to all sequences E Treat like eukaryota in the Discrepancy Report"
    single_structured_comment: "Single Structured Comment File (overrides the use of -X C) [File In]  Optional"
    master_genome_flags: "Master Genome Flags n Normal b Big Sequence p Power Option t TSA"
    add_type_evidence: "Add type of evidence used to assert linkage across assembly gaps (only for TSA records). Must be one of the following: paired-ends align-genus align-xgenus align-trnscpt within-clone clone-contig map strobe"
    lineage_use_discrepancy: "Lineage to use for Discrepancy Report tests"
  }
}