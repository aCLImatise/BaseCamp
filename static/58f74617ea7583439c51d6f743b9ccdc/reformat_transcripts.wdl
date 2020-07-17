version 1.0

task ReformatTranscripts {
  input {
    Boolean? no_escape
    String? output_format
    Array[String] extra_columns
    String? empty_value
    Boolean? quiet
    Boolean? verbose
    String? annotation_format
    Boolean? add_three
    Boolean? tab_ix
    Boolean? sorted
    Array[String] bed_extra_columns
    Int? maxmem
    Array[String] gff_transcript_types
    Array[String] gff_exon_types
    Array[String] gff_cds_types
  }
  command <<<
    reformat_transcripts \
      ~{true="--no_escape" false="" no_escape} \
      ~{if defined(output_format) then ("--output_format " +  '"' + output_format + '"') else ""} \
      ~{if defined(extra_columns) then ("--extra_columns " +  '"' + extra_columns + '"') else ""} \
      ~{if defined(empty_value) then ("--empty_value " +  '"' + empty_value + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(annotation_format) then ("--annotation_format " +  '"' + annotation_format + '"') else ""} \
      ~{true="--add_three" false="" add_three} \
      ~{true="--tabix" false="" tab_ix} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(bed_extra_columns) then ("--bed_extra_columns " +  '"' + bed_extra_columns + '"') else ""} \
      ~{if defined(maxmem) then ("--maxmem " +  '"' + maxmem + '"') else ""} \
      ~{if defined(gff_transcript_types) then ("--gff_transcript_types " +  '"' + gff_transcript_types + '"') else ""} \
      ~{if defined(gff_exon_types) then ("--gff_exon_types " +  '"' + gff_exon_types + '"') else ""} \
      ~{if defined(gff_cds_types) then ("--gff_cds_types " +  '"' + gff_cds_types + '"') else ""}
  >>>
  parameter_meta {
    no_escape: "If specified and output format is GTF2, special characters in column 9 will be escaped (default: True)"
    output_format: "Format of output file. (default: GTF2)"
    extra_columns: "Attributes (e.g. 'gene_id' to output as extra columns in extended BED format (BED output only)."
    empty_value: "Value to use of an attribute in `extra_columns` is not defined for a particular record (Default: 'na'"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
    annotation_format: "Format of annotation_files (Default: GTF2). Note: GFF3 assembly assumes SO v.2.5.2 feature ontologies, which may or may not match your specific file."
    add_three: "If supplied, coding regions will be extended by 3 nucleotides at their 3' ends (except for GTF2 files that explicitly include `stop_codon` features). Use if your annotation file excludes stop codons from CDS."
    tab_ix: "annotation_files are tabix-compressed and indexed (Default: False). Ignored for BigBed files."
    sorted: "annotation_files are sorted by chromosomal position (Default: False)"
    bed_extra_columns: "Number of extra columns in BED file (e.g. in custom ENCODE formats) or list of names for those columns. (Default: 0)."
    maxmem: "Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May be exceeded by large queries. (Default: 0, No maximum)"
    gff_transcript_types: "GFF3 feature types to include as transcripts, even if no exons are present (for GFF3 only; default: use SO v2.5.3 specification)"
    gff_exon_types: "GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3 specification)"
    gff_cds_types: "GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3 specification)"
  }
}