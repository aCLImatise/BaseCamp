version 1.0

task CountsInRegion {
  input {
    Boolean? quiet
    Boolean? verbose
    Array[String] count_files
    String? count_file_format
    String? sum
    Int? min_length
    Int? max_length
    Boolean? big_genome
    Boolean? five_prime_variable
    Boolean? five_prime
    Boolean? three_prime
    Boolean? center
    Int? offset
    Int? nibble
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
    String plastid_dot_genomics_do_troi_tools_dot_segment_chain_dot_from_str
    String outfile
  }
  command <<<
    counts_in_region \
      ~{plastid_dot_genomics_do_troi_tools_dot_segment_chain_dot_from_str} \
      ~{outfile} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(count_files) then ("--count_files " +  '"' + count_files + '"') else ""} \
      ~{if defined(count_file_format) then ("--countfile_format " +  '"' + count_file_format + '"') else ""} \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if (big_genome) then "--big_genome" else ""} \
      ~{if (five_prime_variable) then "--fiveprime_variable" else ""} \
      ~{if (five_prime) then "--fiveprime" else ""} \
      ~{if (three_prime) then "--threeprime" else ""} \
      ~{if (center) then "--center" else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(nibble) then ("--nibble " +  '"' + nibble + '"') else ""} \
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
  parameter_meta {
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    count_files: "One or more count or alignment file(s) from a single\\nsample or set of samples to be pooled."
    count_file_format: "Format of file containing alignments or counts\\n(Default: BAM)"
    sum: "Sum used in normalization of counts and RPKM/RPNT\\ncalculations (Default: total mapped reads/counts in\\ndataset)"
    min_length: "Minimum read length required to be included (BAM &\\nbowtie files only. Default: 25)"
    max_length: "Maximum read length permitted to be included (BAM &\\nbowtie files only. Default: 100)"
    big_genome: "Use slower but memory-efficient implementation for big\\ngenomes or for memory-limited computers. For wiggle &\\nbowtie files only."
    five_prime_variable: "Map read alignment to a variable offset from 5'\\nposition of read, with offset determined by read\\nlength. Requires `--offset` below"
    five_prime: "Map read alignment to 5' position."
    three_prime: "Map read alignment to 3' position"
    center: "Subtract N positions from each end of read, and add\\n1/(length-N), to each remaining position, where N is\\nspecified by `--nibble`"
    offset: "For `--fiveprime` or `--threeprime`, provide an\\ninteger representing the offset into the read,\\nstarting from either the 5' or 3' end, at which data\\nshould be plotted. For `--fiveprime_variable`, provide\\nthe filename of a two-column tab-delimited text file,\\nin which first column represents read length or the\\nspecial keyword `'default'`, and the second column\\nrepresents the offset from the five prime end of that\\nread length at which the read should be mapped.\\n(Default: 0)"
    nibble: "For use with `--center` only. nt to remove from each\\nend of read before mapping (Default: 0)"
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
    plastid_dot_genomics_do_troi_tools_dot_segment_chain_dot_from_str: "`counts`                  Number of reads mapping to region"
    outfile: "Output filename"
  }
  output {
    File out_stdout = stdout()
  }
}