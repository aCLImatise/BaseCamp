version 1.0

task Findjuncs {
  input {
    String? annotation_files
    File? export_top_hat
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
    String out_base
  }
  command <<<
    findjuncs \
      ~{out_base} \
      ~{if defined(annotation_files) then ("--annotation_files " +  '"' + annotation_files + '"') else ""} \
      ~{if (export_top_hat) then "--export_tophat" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(annotation_format) then ("--annotation_format " +  '"' + annotation_format + '"') else ""} \
      ~{if (add_three) then "--add_three" else ""} \
      ~{if (tab_ix) then "--tabix" else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(bed_extra_columns) then ("--bed_extra_columns " +  '"' + bed_extra_columns + '"') else ""} \
      ~{if defined(maxmem) then ("--maxmem " +  '"' + maxmem + '"') else ""} \
      ~{if defined(gff_transcript_types) then ("--gff_transcript_types " +  '"' + gff_transcript_types + '"') else ""} \
      ~{if defined(gff_exon_types) then ("--gff_exon_types " +  '"' + gff_exon_types + '"') else ""} \
      ~{if defined(gff_cds_types) then ("--gff_cds_types " +  '"' + gff_cds_types + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    annotation_files: "newly_discovered.bed"
    export_top_hat: "Export tophat `.juncs` file in addition to BED output"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    annotation_format: "Format of annotation_files (Default: GTF2). Note: GFF3\\nassembly assumes SO v.2.5.2 feature ontologies, which\\nmay or may not match your specific file."
    add_three: "If supplied, coding regions will be extended by 3\\nnucleotides at their 3' ends (except for GTF2 files\\nthat explicitly include `stop_codon` features). Use if\\nyour annotation file excludes stop codons from CDS."
    tab_ix: "annotation_files are tabix-compressed and indexed\\n(Default: False). Ignored for BigBed files."
    sorted: "annotation_files are sorted by chromosomal position\\n(Default: False)"
    bed_extra_columns: "Number of extra columns in BED file (e.g. in custom\\nENCODE formats) or list of names for those columns.\\n(Default: 0)."
    maxmem: "Maximum desired memory footprint in MB to devote to\\nBigBed/BigWig files. May be exceeded by large queries.\\n(Default: 0, No maximum)"
    gff_transcript_types: "GFF3 feature types to include as transcripts, even if\\nno exons are present (for GFF3 only; default: use SO\\nv2.5.3 specification)"
    gff_exon_types: "GFF3 feature types to include as exons (for GFF3 only;\\ndefault: use SO v2.5.3 specification)"
    gff_cds_types: "GFF3 feature types to include as CDS (for GFF3 only;\\ndefault: use SO v2.5.3 specification)\\n"
    out_base: "Basename for output files"
  }
  output {
    File out_stdout = stdout()
    File out_export_top_hat = "${in_export_top_hat}"
  }
}