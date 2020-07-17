class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tbl2asn.cwl
inputs:
- id: template_file_optional
  doc: Template File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -t
- id: file_type_runs
  doc: File Type a Any r20u Runs of 20+ Ns are gaps, 100 Ns are unknown length r20k
    Runs of 20+ Ns are gaps, 100 Ns are known length r10u Runs of 10+ Ns are gaps,
    100 Ns are unknown length r10k Runs of 10+ Ns are gaps, 100 Ns are known length
    s FASTA Set (s Batch, s1 Pop, s2 Phy, s3 Mut, s4 Eco, s9 Small-genome) d FASTA
    Delta, di FASTA Delta with Implicit Gaps l FASTA+Gap Alignment (l Batch, l1 Pop,
    l2 Phy, l3 Mut, l4 Eco, l9 Small-genome) z FASTA with Gap Lines e PHRAP/ACE b
    ASN.1 for -M flag
  type: boolean
  inputBinding:
    prefix: -a
- id: feature_id_links
  doc: Feature ID Links o By Overlap p By Product l By Label and Location s Suppress
    links forced by -M
  type: boolean
  inputBinding:
    prefix: -F
- id: accession__optional
  doc: Accession [String]  Optional
  type: boolean
  inputBinding:
    prefix: -A
- id: genome_center_tag
  doc: Genome Center Tag [String]  Optional
  type: boolean
  inputBinding:
    prefix: -C
- id: organism_name_optional
  doc: Organism Name [String]  Optional
  type: boolean
  inputBinding:
    prefix: -n
- id: source_qualifiers_optional
  doc: Source Qualifiers [String]  Optional
  type: boolean
  inputBinding:
    prefix: -j
- id: comment__optional
  doc: Comment [String]  Optional
  type: boolean
  inputBinding:
    prefix: -y
- id: comment_file_optional
  doc: Comment File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -Y
- id: descriptors_file_optional
  doc: Descriptors File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -D
- id: single_table_file
  doc: Single Table File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -f
- id: cds_flags_combine
  doc: CDS Flags (combine any of the following letters) c Annotate Longest ORF r Allow
    Runon ORFs m Allow Alternative Starts k Set Conflict on Mismatch
  type: boolean
  inputBinding:
    prefix: -k
- id: verification_combine_following
  doc: Verification (combine any of the following letters) v Validate with Normal
    Stringency r Validate without Country Check c BarCode Validation b Generate GenBank
    Flatfile g Generate Gene Report t Validate with TSA Check
  type: boolean
  inputBinding:
    prefix: -V
- id: alignment_gap_flags
  doc: Alignment Gap Flags (comma separated fields, e.g., p,-,-,-,?,. ) n Nucleotide
    or p Protein, Begin, Middle, End Gap Characters, Missing Characters, Match Characters
  type: boolean
  inputBinding:
    prefix: -G
- id: title_policy_special
  doc: mRNA Title Policy s Special mRNA Titles r RefSeq mRNA Titles
  type: boolean
  inputBinding:
    prefix: -Q
- id: hold_publish_y
  doc: Hold Until Publish y Hold for One Year mm/dd/yyyy
  type: boolean
  inputBinding:
    prefix: -H
- id: discrepancy_report_output
  doc: Discrepancy Report Output File [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -Z
- id: cleanup_combine_assume
  doc: Cleanup (combine any of the following letters) d Correct Collection Dates (assume
    month first) D Correct Collection Dates (assume day first) b Append note to coding
    regions that overlap other coding regions with similar product names and do not
    contain 'ABC' x Extend partial ends of features by one or two nucleotides to abut
    gaps or sequence ends p Add exception to non-extendable partials s Add exception
    to short introns f Fix product names
  type: boolean
  inputBinding:
    prefix: -c
- id: cleanup_log_file
  doc: Cleanup Log File [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -z
- id: extra_flags_combine
  doc: Extra Flags (combine any of the following letters) A Automatic definition line
    generator C Apply comments in .cmt files to all sequences E Treat like eukaryota
    in the Discrepancy Report
  type: boolean
  inputBinding:
    prefix: -X
- id: single_structured_comment
  doc: Single Structured Comment File (overrides the use of -X C) [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -w
- id: master_genome_flags
  doc: Master Genome Flags n Normal b Big Sequence p Power Option t TSA
  type: boolean
  inputBinding:
    prefix: -M
- id: add_type_evidence
  doc: 'Add type of evidence used to assert linkage across assembly gaps (only for
    TSA records). Must be one of the following: paired-ends align-genus align-xgenus
    align-trnscpt within-clone clone-contig map strobe'
  type: boolean
  inputBinding:
    prefix: -l
- id: lineage_use_discrepancy
  doc: Lineage to use for Discrepancy Report tests
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- tbl2asn
