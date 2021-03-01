class: CommandLineTool
id: tbl2asn.cwl
inputs:
- id: in_path_files_optional
  doc: Path to Files [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_path_results_optional
  doc: Path for Results [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_single_input_file
  doc: Single Input File [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_single_output_file
  doc: Single Output File [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -o
- id: in_suffix__optionaldefault
  doc: "Suffix [String]  Optional\ndefault = .fsa"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_recurse_optionaldefault_f
  doc: "Recurse [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_template_file_optional
  doc: Template File [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_file_typea_anyru
  doc: "File Type\na Any\nr20u Runs of 20+ Ns are gaps, 100 Ns are unknown length\n\
    r20k Runs of 20+ Ns are gaps, 100 Ns are known length\nr10u Runs of 10+ Ns are\
    \ gaps, 100 Ns are unknown length\nr10k Runs of 10+ Ns are gaps, 100 Ns are known\
    \ length\ns FASTA Set (s Batch, s1 Pop, s2 Phy, s3 Mut, s4 Eco, s9 Small-genome)\n\
    d FASTA Delta, di FASTA Delta with Implicit Gaps\nl FASTA+Gap Alignment (l Batch,\
    \ l1 Pop, l2 Phy, l3 Mut, l4 Eco, l9 Small-genome)\nz FASTA with Gap Lines\ne\
    \ PHRAP/ACE\nb ASN.1 for -M flag"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_read_fastas_optionaldefault
  doc: "Read FASTAs as Set [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_genomic_product_set
  doc: "Genomic Product Set [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_delayed_genomic_product
  doc: "Delayed Genomic Product Set [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_feature_id_linkso
  doc: "Feature ID Links\no By Overlap\np By Product\nl By Label and Location\ns Suppress\
    \ links forced by -M"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_accession__optional
  doc: Accession [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_genome_center_tag
  doc: Genome Center Tag [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_organism_name_optional
  doc: Organism Name [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_source_qualifiers_optional
  doc: Source Qualifiers [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_comment__optional
  doc: Comment [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_comment_file_optional
  doc: Comment File [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_descriptors_file_optional
  doc: Descriptors File [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_single_table_file
  doc: Single Table File [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_cds_flags_combine
  doc: "CDS Flags (combine any of the following letters)\nc Annotate Longest ORF\n\
    r Allow Runon ORFs\nm Allow Alternative Starts\nk Set Conflict on Mismatch"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_verification_combine_following
  doc: "Verification (combine any of the following letters)\nv Validate with Normal\
    \ Stringency\nr Validate without Country Check\nc BarCode Validation\nb Generate\
    \ GenBank Flatfile\ng Generate Gene Report\nt Validate with TSA Check"
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_validate_use_v
  doc: "Validate (obsolete: use -V v) [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_generate_genbank_file
  doc: "Generate GenBank File (obsolete: use -V b) [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_seq_id_file
  doc: "Seq ID from File Name [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_genprodset_nucprotset_optionaldefault
  doc: "GenProdSet to NucProtSet [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_alignment_gap_flags
  doc: "Alignment Gap Flags (comma separated fields, e.g., p,-,-,-,?,. )\nn Nucleotide\
    \ or p Protein,\nBegin, Middle, End Gap Characters,\nMissing Characters, Match\
    \ Characters"
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_remote_sequence_record
  doc: "Remote Sequence Record Fetching from ID [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_smart_feature_annotation
  doc: "Smart Feature Annotation [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_mrna_title_policys
  doc: "mRNA Title Policy\ns Special mRNA Titles\nr RefSeq mRNA Titles"
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_remove_unnecessary_gene
  doc: "Remove Unnecessary Gene Xref [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_force_local_proteinidtranscriptid
  doc: "Force Local protein_id/transcript_id [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_remote_taxonomy_lookup
  doc: "Remote Taxonomy Lookup [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_remote_publication_lookup
  doc: "Remote Publication Lookup [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_log_progress_optionaldefault
  doc: "Log Progress [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_save_bioseqset_optionaldefault
  doc: "Save Bioseq-set [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_hold_publishy_hold
  doc: "Hold Until Publish\ny Hold for One Year\nmm/dd/yyyy"
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_discrepancy_report_output
  doc: Discrepancy Report Output File [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -Z
- id: in_cleanup_combine_following
  doc: "Cleanup (combine any of the following letters)\nd Correct Collection Dates\
    \ (assume month first)\nD Correct Collection Dates (assume day first)\nb Append\
    \ note to coding regions that overlap other coding regions with similar product\
    \ names and do not contain 'ABC'\nx Extend partial ends of features by one or\
    \ two nucleotides to abut gaps or sequence ends\np Add exception to non-extendable\
    \ partials\ns Add exception to short introns\nf Fix product names"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_cleanup_log_file
  doc: Cleanup Log File [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -z
- id: in_extra_flags_combine
  doc: "Extra Flags (combine any of the following letters)\nA Automatic definition\
    \ line generator\nC Apply comments in .cmt files to all sequences\nE Treat like\
    \ eukaryota in the Discrepancy Report"
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_project_version_number
  doc: "Project Version Number [Integer]  Optional\ndefault = 0"
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_single_structured_comment
  doc: Single Structured Comment File (overrides the use of -X C) [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_master_genome_flagsn
  doc: "Master Genome Flags\nn Normal\nb Big Sequence\np Power Option\nt TSA"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_add_type_used
  doc: 'Add type of evidence used to assert linkage across assembly gaps (only for
    TSA records). Must be one of the following:'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_lineage_use_discrepancy
  doc: Lineage to use for Discrepancy Report tests
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_paired_ends
  doc: align-genus
  type: string
  inputBinding:
    position: 0
- id: in_align_x_genus
  doc: align-trnscpt
  type: string
  inputBinding:
    position: 1
- id: in_within_clone
  doc: clone-contig
  type: string
  inputBinding:
    position: 2
- id: in_map
  doc: strobe
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_single_output_file
  doc: Single Output File [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_single_output_file)
- id: out_discrepancy_report_output
  doc: Discrepancy Report Output File [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_discrepancy_report_output)
- id: out_cleanup_log_file
  doc: Cleanup Log File [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_cleanup_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- tbl2asn
