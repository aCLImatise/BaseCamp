version 1.0

task CsGenerate {
  input {
    Boolean? quiet
    Boolean? verbose
    File? annotation_files
    String? annotation_format
    Boolean? add_three
    Boolean? tab_ix
    Boolean? sorted
    Array[String] bed_extra_columns
    Array[String] mask_bed_extra_columns
    Int? maxmem
    Int? mask_maxmem
    Array[String] gff_transcript_types
    Array[String] gff_exon_types
    Array[String] gff_cds_types
    Array[String] mask_gff_transcript_types
    Array[String] mask_gff_exon_types
    Array[String] mask_gff_cds_types
    File? mask_annotation_files
    String? mask_annotation_format
    Boolean? mask_add_three
    Boolean? mask_tab_ix
    Boolean? mask_sorted
    String genes_dot
    String out_base
  }
  command <<<
    cs generate \
      ~{genes_dot} \
      ~{out_base} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(annotation_files) then ("--annotation_files " +  '"' + annotation_files + '"') else ""} \
      ~{if defined(annotation_format) then ("--annotation_format " +  '"' + annotation_format + '"') else ""} \
      ~{if (add_three) then "--add_three" else ""} \
      ~{if (tab_ix) then "--tabix" else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(bed_extra_columns) then ("--bed_extra_columns " +  '"' + bed_extra_columns + '"') else ""} \
      ~{if defined(mask_bed_extra_columns) then ("--mask_bed_extra_columns " +  '"' + mask_bed_extra_columns + '"') else ""} \
      ~{if defined(maxmem) then ("--maxmem " +  '"' + maxmem + '"') else ""} \
      ~{if defined(mask_maxmem) then ("--mask_maxmem " +  '"' + mask_maxmem + '"') else ""} \
      ~{if defined(gff_transcript_types) then ("--gff_transcript_types " +  '"' + gff_transcript_types + '"') else ""} \
      ~{if defined(gff_exon_types) then ("--gff_exon_types " +  '"' + gff_exon_types + '"') else ""} \
      ~{if defined(gff_cds_types) then ("--gff_cds_types " +  '"' + gff_cds_types + '"') else ""} \
      ~{if defined(mask_gff_transcript_types) then ("--mask_gff_transcript_types " +  '"' + mask_gff_transcript_types + '"') else ""} \
      ~{if defined(mask_gff_exon_types) then ("--mask_gff_exon_types " +  '"' + mask_gff_exon_types + '"') else ""} \
      ~{if defined(mask_gff_cds_types) then ("--mask_gff_cds_types " +  '"' + mask_gff_cds_types + '"') else ""} \
      ~{if defined(mask_annotation_files) then ("--mask_annotation_files " +  '"' + mask_annotation_files + '"') else ""} \
      ~{if defined(mask_annotation_format) then ("--mask_annotation_format " +  '"' + mask_annotation_format + '"') else ""} \
      ~{if (mask_add_three) then "--mask_add_three" else ""} \
      ~{if (mask_tab_ix) then "--mask_tabix" else ""} \
      ~{if (mask_sorted) then "--mask_sorted" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    annotation_files: "[BED | BigBed | GTF2 | GFF3] [infile.[BED | BigBed | GTF2 | GFF3] ...]\\nZero or more annotation files (max 1 file if BigBed)"
    annotation_format: "Format of annotation_files (Default: GTF2). Note: GFF3\\nassembly assumes SO v.2.5.2 feature ontologies, which\\nmay or may not match your specific file."
    add_three: "If supplied, coding regions will be extended by 3\\nnucleotides at their 3' ends (except for GTF2 files\\nthat explicitly include `stop_codon` features). Use if\\nyour annotation file excludes stop codons from CDS."
    tab_ix: "annotation_files are tabix-compressed and indexed\\n(Default: False). Ignored for BigBed files."
    sorted: "annotation_files are sorted by chromosomal position\\n(Default: False)"
    bed_extra_columns: "Number of extra columns in BED file (e.g. in custom\\nENCODE formats) or list of names for those columns.\\n(Default: 0)."
    mask_bed_extra_columns: "Number of extra columns in BED file (e.g. in custom\\nENCODE formats) or list of names for those columns.\\n(Default: 0)."
    maxmem: "Maximum desired memory footprint in MB to devote to\\nBigBed/BigWig files. May be exceeded by large queries.\\n(Default: 0, No maximum)"
    mask_maxmem: "Maximum desired memory footprint in MB to devote to\\nBigBed/BigWig files. May be exceeded by large queries.\\n(Default: 0, No maximum)"
    gff_transcript_types: "GFF3 feature types to include as transcripts, even if\\nno exons are present (for GFF3 only; default: use SO\\nv2.5.3 specification)"
    gff_exon_types: "GFF3 feature types to include as exons (for GFF3 only;\\ndefault: use SO v2.5.3 specification)"
    gff_cds_types: "GFF3 feature types to include as CDS (for GFF3 only;\\ndefault: use SO v2.5.3 specification)"
    mask_gff_transcript_types: "GFF3 feature types to include as transcripts, even if\\nno exons are present (for GFF3 only; default: use SO\\nv2.5.3 specification)"
    mask_gff_exon_types: "GFF3 feature types to include as exons (for GFF3 only;\\ndefault: use SO v2.5.3 specification)"
    mask_gff_cds_types: "GFF3 feature types to include as CDS (for GFF3 only;\\ndefault: use SO v2.5.3 specification)"
    mask_annotation_files: "[BED | BigBed | GTF2 | GFF3 | PSL] [infile.[BED | BigBed | GTF2 | GFF3 | PSL] ...]\\nZero or more annotation files (max 1 file if BigBed)"
    mask_annotation_format: "Format of mask_annotation_files (Default: GTF2). Note:\\nGFF3 assembly assumes SO v.2.5.2 feature ontologies,\\nwhich may or may not match your specific file."
    mask_add_three: "If supplied, coding regions will be extended by 3\\nnucleotides at their 3' ends (except for GTF2 files\\nthat explicitly include `stop_codon` features). Use if\\nyour annotation file excludes stop codons from CDS."
    mask_tab_ix: "mask_annotation_files are tabix-compressed and indexed\\n(Default: False). Ignored for BigBed files."
    mask_sorted: "mask_annotation_files are sorted by chromosomal\\nposition (Default: False)\\n"
    genes_dot: "2. Within merged genes, all positions are classified. All positions are"
    out_base: "Basename for output files"
  }
  output {
    File out_stdout = stdout()
  }
}