version 1.0

task Slidejuncs {
  input {
    Int? max_slide
    String? ref
    Boolean? slide_canonical
    Boolean? quiet
    Boolean? verbose
    String? sequence_format
    String? mask_annotation_format
    Boolean? mask_add_three
    Boolean? mask_tab_ix
    Boolean? mask_sorted
    Array[String] mask_bed_extra_columns
    String? mask_maxmem
    Array[String] mask_gff_transcript_types
    Array[String] mask_gff_exon_types
    Array[String] mask_gff_cds_types
    String one_dot
    String two_dot
    String three_dot
    String four_dot
    String five_dot
    String six_dot
    String out_base_repetitive_dot_bed
    String out_base_shifted_known_dot_bed
    String out_base_shifted_canonical_dot_bed
    String out_base_untouched_dot_bed
    String input_dot_bed
    String out_base
  }
  command <<<
    slidejuncs \
      ~{one_dot} \
      ~{two_dot} \
      ~{three_dot} \
      ~{four_dot} \
      ~{five_dot} \
      ~{six_dot} \
      ~{out_base_repetitive_dot_bed} \
      ~{out_base_shifted_known_dot_bed} \
      ~{out_base_shifted_canonical_dot_bed} \
      ~{out_base_untouched_dot_bed} \
      ~{input_dot_bed} \
      ~{out_base} \
      ~{if defined(max_slide) then ("--maxslide " +  '"' + max_slide + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{true="--slide_canonical" false="" slide_canonical} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(sequence_format) then ("--sequence_format " +  '"' + sequence_format + '"') else ""} \
      ~{if defined(mask_annotation_format) then ("--mask_annotation_format " +  '"' + mask_annotation_format + '"') else ""} \
      ~{true="--mask_add_three" false="" mask_add_three} \
      ~{true="--mask_tabix" false="" mask_tab_ix} \
      ~{true="--mask_sorted" false="" mask_sorted} \
      ~{if defined(mask_bed_extra_columns) then ("--mask_bed_extra_columns " +  '"' + mask_bed_extra_columns + '"') else ""} \
      ~{if defined(mask_maxmem) then ("--mask_maxmem " +  '"' + mask_maxmem + '"') else ""} \
      ~{if defined(mask_gff_transcript_types) then ("--mask_gff_transcript_types " +  '"' + mask_gff_transcript_types + '"') else ""} \
      ~{if defined(mask_gff_exon_types) then ("--mask_gff_exon_types " +  '"' + mask_gff_exon_types + '"') else ""} \
      ~{if defined(mask_gff_cds_types) then ("--mask_gff_cds_types " +  '"' + mask_gff_cds_types + '"') else ""}
  >>>
  parameter_meta {
    max_slide: "Maximum number of nt to search 5' and 3' of intron boundaries (Default: 10)"
    ref: "Reference file describing known splice junctions"
    slide_canonical: "Slide junctions to canonical junctions if present within equal support region"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
    sequence_format: "Format of sequence_file (Default: fasta)."
    mask_annotation_format: "Format of mask_annotation_files (Default: GTF2). Note: GFF3 assembly assumes SO v.2.5.2 feature ontologies, which may or may not match your specific file."
    mask_add_three: "If supplied, coding regions will be extended by 3 nucleotides at their 3' ends (except for GTF2 files that explicitly include `stop_codon` features). Use if your annotation file excludes stop codons from CDS."
    mask_tab_ix: "mask_annotation_files are tabix-compressed and indexed (Default: False). Ignored for BigBed files."
    mask_sorted: "mask_annotation_files are sorted by chromosomal position (Default: False)"
    mask_bed_extra_columns: "Number of extra columns in BED file (e.g. in custom ENCODE formats) or list of names for those columns. (Default: 0)."
    mask_maxmem: "Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May be exceeded by large queries. (Default: 0, No maximum)"
    mask_gff_transcript_types: "GFF3 feature types to include as transcripts, even if no exons are present (for GFF3 only; default: use SO v2.5.3 specification)"
    mask_gff_exon_types: "GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3 specification)"
    mask_gff_cds_types: "GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3 specification)"
    one_dot: "If a mask file from crossmap is provided, junctions in which one or more of the 5' and 3' splice sites appear in a repetitive region of the genome are flagged as non-informative and written to a separate file. "
    two_dot: "For remaining splice junctions, the extent of locally repeated nucleotide sequence, if any, surrounding the query junction's splice donor and acceptor sites, are determined in both the 5' and 3' directions. This is the maximum window (*equal-support region*) across which the actual splice junction could be moved without reducing sequence support."
    three_dot: "If there is one or more known splice junctions in this region, the query junction is assumed to match these, and the known junctions are reported rather than the query. "
    four_dot: "If (3) is not satisfied, and the query junction is a canonical splice junction, it is reported as is."
    five_dot: "If (3) is not satisfied, and the query junction represents a non-canonical splice junction, the program determines if one or more canonical splice junctions is present in the equal-support region. If so, these canonical splice junction are reported rather than the query junction."
    six_dot: "If (5) is not satisfied, the non-canonical query junction is reported as-is."
    out_base_repetitive_dot_bed: "Splice junctions in which one or more of the splice sites lands in a repetitive/degenerate region of the genome, which gives rise to mapping ambiguities (step 1 above)"
    out_base_shifted_known_dot_bed: "The result of shifting query splice junctions to known splice junctions with equal sequence support (step 3 above)"
    out_base_shifted_canonical_dot_bed: "The result of shifting non-canonical query splice junctions to canonical splice junctions with equal sequence support (step 5 above)"
    out_base_untouched_dot_bed: "Query junctions reported without changes (steps 4 and 6 above)"
    input_dot_bed: "BED file describing discovered junctions"
    out_base: "Basename for output files"
  }
}