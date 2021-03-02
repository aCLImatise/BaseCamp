version 1.0

task Slidejuncs {
  input {
    Int? max_slide
    File? ref
    Boolean? slide_canonical
    Boolean? quiet
    Boolean? verbose
    File? sequence_file
    String? sequence_format
    File? mask_annotation_files
    String? mask_annotation_format
    Boolean? mask_add_three
    Boolean? mask_tab_ix
    Boolean? mask_sorted
    Array[String] mask_bed_extra_columns
    Int? mask_maxmem
    Array[String] mask_gff_transcript_types
    Array[String] mask_gff_exon_types
    Array[String] mask_gff_cds_types
    String sequence
    Int one_dot
    Int two_dot
    Int three_dot
    Int four_dot
    Int five_dot
    Int six_dot
    String out_base_repetitive_dot_bed
    String out_base_shifted_known_dot_bed
    String out_base_shifted_canonical_dot_bed
    String out_base_untouched_dot_bed
    String input_dot_bed
    String out_base
  }
  command <<<
    slidejuncs \
      ~{sequence} \
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
      ~{if (slide_canonical) then "--slide_canonical" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(sequence_file) then ("--sequence_file " +  '"' + sequence_file + '"') else ""} \
      ~{if defined(sequence_format) then ("--sequence_format " +  '"' + sequence_format + '"') else ""} \
      ~{if defined(mask_annotation_files) then ("--mask_annotation_files " +  '"' + mask_annotation_files + '"') else ""} \
      ~{if defined(mask_annotation_format) then ("--mask_annotation_format " +  '"' + mask_annotation_format + '"') else ""} \
      ~{if (mask_add_three) then "--mask_add_three" else ""} \
      ~{if (mask_tab_ix) then "--mask_tabix" else ""} \
      ~{if (mask_sorted) then "--mask_sorted" else ""} \
      ~{if defined(mask_bed_extra_columns) then ("--mask_bed_extra_columns " +  '"' + mask_bed_extra_columns + '"') else ""} \
      ~{if defined(mask_maxmem) then ("--mask_maxmem " +  '"' + mask_maxmem + '"') else ""} \
      ~{if defined(mask_gff_transcript_types) then ("--mask_gff_transcript_types " +  '"' + mask_gff_transcript_types + '"') else ""} \
      ~{if defined(mask_gff_exon_types) then ("--mask_gff_exon_types " +  '"' + mask_gff_exon_types + '"') else ""} \
      ~{if defined(mask_gff_cds_types) then ("--mask_gff_cds_types " +  '"' + mask_gff_cds_types + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_slide: "Maximum number of nt to search 5' and 3' of intron\\nboundaries (Default: 10)"
    ref: "Reference file describing known splice junctions"
    slide_canonical: "Slide junctions to canonical junctions if present\\nwithin equal support region"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    sequence_file: "[fasta | fastq | twobit | genbank | embl]\\nA file of DNA sequence"
    sequence_format: "Format of sequence_file (Default: fasta)."
    mask_annotation_files: "[BED | BigBed | GTF2 | GFF3 | PSL] [infile.[BED | BigBed | GTF2 | GFF3 | PSL] ...]\\nZero or more annotation files (max 1 file if BigBed)"
    mask_annotation_format: "Format of mask_annotation_files (Default: GTF2). Note:\\nGFF3 assembly assumes SO v.2.5.2 feature ontologies,\\nwhich may or may not match your specific file."
    mask_add_three: "If supplied, coding regions will be extended by 3\\nnucleotides at their 3' ends (except for GTF2 files\\nthat explicitly include `stop_codon` features). Use if\\nyour annotation file excludes stop codons from CDS."
    mask_tab_ix: "mask_annotation_files are tabix-compressed and indexed\\n(Default: False). Ignored for BigBed files."
    mask_sorted: "mask_annotation_files are sorted by chromosomal\\nposition (Default: False)"
    mask_bed_extra_columns: "Number of extra columns in BED file (e.g. in custom\\nENCODE formats) or list of names for those columns.\\n(Default: 0)."
    mask_maxmem: "Maximum desired memory footprint in MB to devote to\\nBigBed/BigWig files. May be exceeded by large queries.\\n(Default: 0, No maximum)"
    mask_gff_transcript_types: "GFF3 feature types to include as transcripts, even if\\nno exons are present (for GFF3 only; default: use SO\\nv2.5.3 specification)"
    mask_gff_exon_types: "GFF3 feature types to include as exons (for GFF3 only;\\ndefault: use SO v2.5.3 specification)"
    mask_gff_cds_types: "GFF3 feature types to include as CDS (for GFF3 only;\\ndefault: use SO v2.5.3 specification)\\n"
    sequence: "G   C   T   C   T   A   C   T   A   G   N   N   N   C   T   A   C   T   A   G   A   T   G   G"
    one_dot: "If a mask file from crossmap\\nis provided, junctions in which one or more of the 5' and 3' splice\\nsites appear in a repetitive region of the genome are flagged as\\nnon-informative and written to a separate file."
    two_dot: "For remaining splice junctions, the extent of locally repeated nucleotide\\nsequence, if any, surrounding the query junction's splice donor and\\nacceptor sites, are determined in both the 5' and 3' directions.\\nThis is the maximum window (*equal-support region*) across which the\\nactual splice junction could be moved without reducing sequence support."
    three_dot: "If there is one or more known splice junctions in this region, the\\nquery junction is assumed to match these, and the known junctions are\\nreported rather than the query."
    four_dot: "If (3) is not satisfied, and the query junction is a canonical splice\\njunction, it is reported as is."
    five_dot: "If (3) is not satisfied, and the query junction represents a non-canonical\\nsplice junction, the program determines if one or more canonical splice\\njunctions is present in the equal-support region. If so, these canonical\\nsplice junction are reported rather than the query junction."
    six_dot: "If (5) is not satisfied, the non-canonical query junction is reported as-is."
    out_base_repetitive_dot_bed: "Splice junctions in which one or more of the splice sites lands\\nin a repetitive/degenerate region of the genome, which gives rise to\\nmapping ambiguities (step 1 above)"
    out_base_shifted_known_dot_bed: "The result of shifting query splice junctions to known splice junctions\\nwith equal sequence support (step 3 above)"
    out_base_shifted_canonical_dot_bed: "The result of shifting non-canonical query splice junctions to canonical\\nsplice junctions with equal sequence support (step 5 above)"
    out_base_untouched_dot_bed: "Query junctions reported without changes (steps 4 and 6 above)"
    input_dot_bed: "BED file describing discovered junctions"
    out_base: "Basename for output files"
  }
  output {
    File out_stdout = stdout()
  }
}