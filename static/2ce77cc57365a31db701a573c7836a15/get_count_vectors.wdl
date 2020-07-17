version 1.0

task GetCountVectors {
  input {
    String? out_prefix
    String? format
    Boolean? quiet
    Boolean? verbose
    Array[String] count_files
    String? count_file_format
    Boolean? normalize
    String? sum
    String? min_length
    String? max_length
    Boolean? big_genome
    Boolean? five_prime_variable
    Boolean? five_prime
    Boolean? three_prime
    Boolean? center
    String? offset
    String? nibble
    String? annotation_format
    Boolean? add_three
    Boolean? tab_ix
    Boolean? sorted
    Array[String] bed_extra_columns
    Array[String] mask_bed_extra_columns
    Int? maxmem
    String? mask_maxmem
    Array[String] gff_transcript_types
    Array[String] gff_exon_types
    Array[String] gff_cds_types
    Array[String] mask_gff_transcript_types
    Array[String] mask_gff_exon_types
    Array[String] mask_gff_cds_types
    String? mask_annotation_format
    Boolean? mask_add_three
    Boolean? mask_tab_ix
    Boolean? mask_sorted
    String out_folder
  }
  command <<<
    get_count_vectors \
      ~{out_folder} \
      ~{if defined(out_prefix) then ("--out_prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(count_files) then ("--count_files " +  '"' + count_files + '"') else ""} \
      ~{if defined(count_file_format) then ("--countfile_format " +  '"' + count_file_format + '"') else ""} \
      ~{true="--normalize" false="" normalize} \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{true="--big_genome" false="" big_genome} \
      ~{true="--fiveprime_variable" false="" five_prime_variable} \
      ~{true="--fiveprime" false="" five_prime} \
      ~{true="--threeprime" false="" three_prime} \
      ~{true="--center" false="" center} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(nibble) then ("--nibble " +  '"' + nibble + '"') else ""} \
      ~{if defined(annotation_format) then ("--annotation_format " +  '"' + annotation_format + '"') else ""} \
      ~{true="--add_three" false="" add_three} \
      ~{true="--tabix" false="" tab_ix} \
      ~{true="--sorted" false="" sorted} \
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
      ~{if defined(mask_annotation_format) then ("--mask_annotation_format " +  '"' + mask_annotation_format + '"') else ""} \
      ~{true="--mask_add_three" false="" mask_add_three} \
      ~{true="--mask_tabix" false="" mask_tab_ix} \
      ~{true="--mask_sorted" false="" mask_sorted}
  >>>
  parameter_meta {
    out_prefix: "Prefix to prepend to output files (default: no prefix)"
    format: "printf-style format string for output (default: '%.8f')"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
    count_files: "One or more count or alignment file(s) from a single sample or set of samples to be pooled."
    count_file_format: "Format of file containing alignments or counts (Default: BAM)"
    normalize: "Whether counts should be normalized to counts per million (usually not. default: False)"
    sum: "Sum used in normalization of counts and RPKM/RPNT calculations (Default: total mapped reads/counts in dataset)"
    min_length: "Minimum read length required to be included (BAM & bowtie files only. Default: 25)"
    max_length: "Maximum read length permitted to be included (BAM & bowtie files only. Default: 100)"
    big_genome: "Use slower but memory-efficient implementation for big genomes or for memory-limited computers. For wiggle & bowtie files only."
    five_prime_variable: "Map read alignment to a variable offset from 5' position of read, with offset determined by read length. Requires `--offset` below"
    five_prime: "Map read alignment to 5' position."
    three_prime: "Map read alignment to 3' position"
    center: "Subtract N positions from each end of read, and add 1/(length-N), to each remaining position, where N is specified by `--nibble`"
    offset: "For `--fiveprime` or `--threeprime`, provide an integer representing the offset into the read, starting from either the 5' or 3' end, at which data should be plotted. For `--fiveprime_variable`, provide the filename of a two-column tab-delimited text file, in which first column represents read length or the special keyword `'default'`, and the second column represents the offset from the five prime end of that read length at which the read should be mapped. (Default: 0)"
    nibble: "For use with `--center` only. nt to remove from each end of read before mapping (Default: 0)"
    annotation_format: "Format of annotation_files (Default: GTF2). Note: GFF3 assembly assumes SO v.2.5.2 feature ontologies, which may or may not match your specific file."
    add_three: "If supplied, coding regions will be extended by 3 nucleotides at their 3' ends (except for GTF2 files that explicitly include `stop_codon` features). Use if your annotation file excludes stop codons from CDS."
    tab_ix: "annotation_files are tabix-compressed and indexed (Default: False). Ignored for BigBed files."
    sorted: "annotation_files are sorted by chromosomal position (Default: False)"
    bed_extra_columns: "Number of extra columns in BED file (e.g. in custom ENCODE formats) or list of names for those columns. (Default: 0)."
    mask_bed_extra_columns: "Number of extra columns in BED file (e.g. in custom ENCODE formats) or list of names for those columns. (Default: 0)."
    maxmem: "Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May be exceeded by large queries. (Default: 0, No maximum)"
    mask_maxmem: "Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May be exceeded by large queries. (Default: 0, No maximum)"
    gff_transcript_types: "GFF3 feature types to include as transcripts, even if no exons are present (for GFF3 only; default: use SO v2.5.3 specification)"
    gff_exon_types: "GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3 specification)"
    gff_cds_types: "GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3 specification)"
    mask_gff_transcript_types: "GFF3 feature types to include as transcripts, even if no exons are present (for GFF3 only; default: use SO v2.5.3 specification)"
    mask_gff_exon_types: "GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3 specification)"
    mask_gff_cds_types: "GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3 specification)"
    mask_annotation_format: "Format of mask_annotation_files (Default: GTF2). Note: GFF3 assembly assumes SO v.2.5.2 feature ontologies, which may or may not match your specific file."
    mask_add_three: "If supplied, coding regions will be extended by 3 nucleotides at their 3' ends (except for GTF2 files that explicitly include `stop_codon` features). Use if your annotation file excludes stop codons from CDS."
    mask_tab_ix: "mask_annotation_files are tabix-compressed and indexed (Default: False). Ignored for BigBed files."
    mask_sorted: "mask_annotation_files are sorted by chromosomal position (Default: False)"
    out_folder: "Folder in which to save output vectors"
  }
}