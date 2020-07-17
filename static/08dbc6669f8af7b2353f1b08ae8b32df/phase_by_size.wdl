version 1.0

task PhaseBySize {
  input {
    String? codon_buffer
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
    Array[String] count_files
    String? count_file_format
    String? sum
    String? min_length
    String? max_length
    Boolean? five_prime_variable
    Boolean? five_prime
    Boolean? three_prime
    Boolean? center
    String? offset
    String? nibble
    String? fig_format
    String? fig_size
    String? title
    String? cmap
    String? dpi
    Boolean? stylesheet
    String out_base_phasing_dot_txt
    String out_base_phasing_dot_svg
    String roi_file
    String out_base
  }
  command <<<
    phase_by_size \
      ~{out_base_phasing_dot_txt} \
      ~{out_base_phasing_dot_svg} \
      ~{roi_file} \
      ~{out_base} \
      ~{if defined(codon_buffer) then ("--codon_buffer " +  '"' + codon_buffer + '"') else ""} \
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
      ~{if defined(gff_cds_types) then ("--gff_cds_types " +  '"' + gff_cds_types + '"') else ""} \
      ~{if defined(count_files) then ("--count_files " +  '"' + count_files + '"') else ""} \
      ~{if defined(count_file_format) then ("--countfile_format " +  '"' + count_file_format + '"') else ""} \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{true="--fiveprime_variable" false="" five_prime_variable} \
      ~{true="--fiveprime" false="" five_prime} \
      ~{true="--threeprime" false="" three_prime} \
      ~{true="--center" false="" center} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(nibble) then ("--nibble " +  '"' + nibble + '"') else ""} \
      ~{if defined(fig_format) then ("--figformat " +  '"' + fig_format + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{true="--stylesheet" false="" stylesheet}
  >>>
  parameter_meta {
    codon_buffer: "Codons before and after start codon to ignore (Default: 5)"
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
    count_files: "One or more count or alignment file(s) from a single sample or set of samples to be pooled."
    count_file_format: "Format of file containing alignments or counts (Default: BAM)"
    sum: "Sum used in normalization of counts and RPKM/RPNT calculations (Default: total mapped reads/counts in dataset)"
    min_length: "Minimum read length required to be included (BAM & bowtie files only. Default: 25)"
    max_length: "Maximum read length permitted to be included (BAM & bowtie files only. Default: 100)"
    five_prime_variable: "Map read alignment to a variable offset from 5' position of read, with offset determined by read length. Requires `--offset` below"
    five_prime: "Map read alignment to 5' position."
    three_prime: "Map read alignment to 3' position"
    center: "Subtract N positions from each end of read, and add 1/(length-N), to each remaining position, where N is specified by `--nibble`"
    offset: "For `--fiveprime` or `--threeprime`, provide an integer representing the offset into the read, starting from either the 5' or 3' end, at which data should be plotted. For `--fiveprime_variable`, provide the filename of a two-column tab-delimited text file, in which first column represents read length or the special keyword `'default'`, and the second column represents the offset from the five prime end of that read length at which the read should be mapped. (Default: 0)"
    nibble: "For use with `--center` only. nt to remove from each end of read before mapping (Default: 0)"
    fig_format: "File format for figure(s); Default: png)"
    fig_size: "N         Figure width and height, in inches. (Default: use matplotlibrc params)"
    title: "Base title for plot(s)."
    cmap: "Matplotlib color map from which palette will be made (e.g. 'Blues','autumn','Set1'; default: use colors from ``--stylesheet`` if given, or color cycle in matplotlibrc)"
    dpi: "Figure resolution (Default: 150)"
    stylesheet: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10} Use this matplotlib stylesheet instead of matplotlibrc params"
    out_base_phasing_dot_txt: "Read phasing for each read length"
    out_base_phasing_dot_svg: "Plot of phasing by read length"
    roi_file: "Optional. ROI file of maximal spanning windows surrounding start codons, from ``metagene generate`` subprogram. Using this instead of `--annotation_files` prevents double-counting of codons when multiple transcript isoforms exist for a gene. See the documentation for `metagene` for more info about ROI files.If an ROI file is not given, supply an annotation with ``--annotation_files``"
    out_base: "Required. Basename for output files"
  }
}