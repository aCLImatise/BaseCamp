version 1.0

task Vardictjava {
  input {
    Boolean? indicate_move_indels
    Int? number_std_pair
    Boolean? amplicon
    String? adaptor
    Int? minimum_reads_determine
    File? indexed_bam_file
    Boolean? indicate_chromosome_names
    Int? the_column_chromosome
    Boolean? chimeric
    Boolean? debug
    String? delimiter_split_tab
    Boolean? del_dup_var
    String? default_printer
    Int? column_region_end
    Int? column_segment_ends
    Int? hexical_filter_reads
    Float? threshold_allele_frequency
    File? reference_fasta_indexed
    Int? column_gene_name
    Boolean? _print_help
    Int? indel_size_bp
    Boolean? splice
    Int? crisp_r
    String? crispr_mode_minimum
    Boolean? include_ns_total
    Int? indicate_perform_default
    Int? minimum_structural_variant
    Int? minimum_matches_read
    Int? set_reads_more
    Float? m_freq
    String? sample_name_used
    String? regular_expression_extract
    Float? nm_freq
    String? reads_have_mean
    Float? qratio_goodqualityreadsbadqualityreads_quality
    Int? read_position_filter
    Boolean? pileup_regardless_frequency
    Int? set_reads_less
    Int? phred_score_base
    String? region_interest_format
    Int? minimum_variant_reads
    Int? column_region_start
    Int? column_segment_starts
    Int? trim
    Boolean? ded_up
    Int? th
    Boolean? no_sv
    Boolean? indicate_mode_usingforward
    Boolean? un
    Float? lowest_frequency_normal
    Boolean? vcf_format_output
    String? vs
    Int? insert_size
    Int? extension_bp_look
    Int? number_nucleotide_extend
    Int? ref_extension
    Float? down_sample
    Int? indicate_coordinates_zerobased
    String insert_std_dot
    String guide_dot
    String mismatches_dot
    String positive_dot
    String strict
    String emit_warnings_keep
    String silent
    String winsertstd_int_insert
    String caution_dot
  }
  command <<<
    vardict_java \
      ~{insert_std_dot} \
      ~{guide_dot} \
      ~{mismatches_dot} \
      ~{positive_dot} \
      ~{strict} \
      ~{emit_warnings_keep} \
      ~{silent} \
      ~{winsertstd_int_insert} \
      ~{caution_dot} \
      ~{if (indicate_move_indels) then "-3" else ""} \
      ~{if defined(number_std_pair) then ("-A " +  '"' + number_std_pair + '"') else ""} \
      ~{if (amplicon) then "--amplicon" else ""} \
      ~{if defined(adaptor) then ("-adaptor " +  '"' + adaptor + '"') else ""} \
      ~{if defined(minimum_reads_determine) then ("-B " +  '"' + minimum_reads_determine + '"') else ""} \
      ~{if defined(indexed_bam_file) then ("-b " +  '"' + indexed_bam_file + '"') else ""} \
      ~{if (indicate_chromosome_names) then "-C" else ""} \
      ~{if defined(the_column_chromosome) then ("-c " +  '"' + the_column_chromosome + '"') else ""} \
      ~{if (chimeric) then "-chimeric" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(delimiter_split_tab) then ("-d " +  '"' + delimiter_split_tab + '"') else ""} \
      ~{if (del_dup_var) then "-deldupvar" else ""} \
      ~{if defined(default_printer) then ("--default-printer " +  '"' + default_printer + '"') else ""} \
      ~{if defined(column_region_end) then ("-E " +  '"' + column_region_end + '"') else ""} \
      ~{if defined(column_segment_ends) then ("-e " +  '"' + column_segment_ends + '"') else ""} \
      ~{if defined(hexical_filter_reads) then ("-F " +  '"' + hexical_filter_reads + '"') else ""} \
      ~{if defined(threshold_allele_frequency) then ("-f " +  '"' + threshold_allele_frequency + '"') else ""} \
      ~{if defined(reference_fasta_indexed) then ("-G " +  '"' + reference_fasta_indexed + '"') else ""} \
      ~{if defined(column_gene_name) then ("-g " +  '"' + column_gene_name + '"') else ""} \
      ~{if (_print_help) then "-H" else ""} \
      ~{if defined(indel_size_bp) then ("-I " +  '"' + indel_size_bp + '"') else ""} \
      ~{if (splice) then "--splice" else ""} \
      ~{if defined(crisp_r) then ("--crispr " +  '"' + crisp_r + '"') else ""} \
      ~{if defined(crispr_mode_minimum) then ("-j " +  '"' + crispr_mode_minimum + '"') else ""} \
      ~{if (include_ns_total) then "-K" else ""} \
      ~{if defined(indicate_perform_default) then ("-k " +  '"' + indicate_perform_default + '"') else ""} \
      ~{if defined(minimum_structural_variant) then ("-L " +  '"' + minimum_structural_variant + '"') else ""} \
      ~{if defined(minimum_matches_read) then ("-M " +  '"' + minimum_matches_read + '"') else ""} \
      ~{if defined(set_reads_more) then ("-m " +  '"' + set_reads_more + '"') else ""} \
      ~{if defined(m_freq) then ("-mfreq " +  '"' + m_freq + '"') else ""} \
      ~{if defined(sample_name_used) then ("-N " +  '"' + sample_name_used + '"') else ""} \
      ~{if defined(regular_expression_extract) then ("-n " +  '"' + regular_expression_extract + '"') else ""} \
      ~{if defined(nm_freq) then ("-nmfreq " +  '"' + nm_freq + '"') else ""} \
      ~{if defined(reads_have_mean) then ("-O " +  '"' + reads_have_mean + '"') else ""} \
      ~{if defined(qratio_goodqualityreadsbadqualityreads_quality) then ("-o " +  '"' + qratio_goodqualityreadsbadqualityreads_quality + '"') else ""} \
      ~{if defined(read_position_filter) then ("-P " +  '"' + read_position_filter + '"') else ""} \
      ~{if (pileup_regardless_frequency) then "-p" else ""} \
      ~{if defined(set_reads_less) then ("-Q " +  '"' + set_reads_less + '"') else ""} \
      ~{if defined(phred_score_base) then ("-q " +  '"' + phred_score_base + '"') else ""} \
      ~{if defined(region_interest_format) then ("-R " +  '"' + region_interest_format + '"') else ""} \
      ~{if defined(minimum_variant_reads) then ("-r " +  '"' + minimum_variant_reads + '"') else ""} \
      ~{if defined(column_region_start) then ("-S " +  '"' + column_region_start + '"') else ""} \
      ~{if defined(column_segment_starts) then ("-s " +  '"' + column_segment_starts + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if (ded_up) then "--dedup" else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if (no_sv) then "--nosv" else ""} \
      ~{if (indicate_mode_usingforward) then "-u" else ""} \
      ~{if (un) then "-UN" else ""} \
      ~{if defined(lowest_frequency_normal) then ("-V " +  '"' + lowest_frequency_normal + '"') else ""} \
      ~{if (vcf_format_output) then "-v" else ""} \
      ~{if defined(vs) then ("-VS " +  '"' + vs + '"') else ""} \
      ~{if defined(insert_size) then ("--insert-size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(extension_bp_look) then ("-X " +  '"' + extension_bp_look + '"') else ""} \
      ~{if defined(number_nucleotide_extend) then ("-x " +  '"' + number_nucleotide_extend + '"') else ""} \
      ~{if defined(ref_extension) then ("--ref-extension " +  '"' + ref_extension + '"') else ""} \
      ~{if defined(down_sample) then ("--downsample " +  '"' + down_sample + '"') else ""} \
      ~{if defined(indicate_coordinates_zerobased) then ("-z " +  '"' + indicate_coordinates_zerobased + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    indicate_move_indels: "Indicate to move indels to 3-prime if alternative alignment can be achieved."
    number_std_pair: "The number of STD. A pair will be considered for DEL if INSERT > INSERT_SIZE + INSERT_STD_AMT *"
    amplicon: "<int:float>           Indicate it's amplicon based calling.  Reads that don't map to the amplicon will be skipped.  A read pair\\nis considered belonging  to the amplicon if the edges are less than int bp to the amplicon, and overlap\\nfraction is at least float.  Default: 10:0.95"
    adaptor: "Filter adaptor sequences so that they are not used in realignment. Multiple adaptors can be supplied by\\nsetting them with comma, like: --adaptor ACGTTGCTC,ACGGGGTCTC,ACGCGGCTAG ."
    minimum_reads_determine: "The minimum # of reads to determine strand bias, default 2"
    indexed_bam_file: "The indexed BAM file"
    indicate_chromosome_names: "Indicate the chromosome names are just numbers, such as 1, 2, not chr1, chr2 (deprecated)"
    the_column_chromosome: "The column for chromosome"
    chimeric: "Indicate to turn off chimeric reads filtering."
    debug: "Debug mode.  Will print some error messages and append full genotype at the end."
    delimiter_split_tab: "The delimiter for split region_info, default to tab \\\"\\t\\\""
    del_dup_var: "Turn on deleting of duplicate variants. Variants in this mode are considered and outputted only if start\\nposition of variant is inside the region interest."
    default_printer: "The printer type used for different outputs. Default: OUT (i.e. System.out)."
    column_region_end: "The column for region end, e.g. gene end"
    column_segment_ends: "The column for segment ends in the region, e.g. exon ends"
    hexical_filter_reads: "The hexical to filter reads using samtools. Default: 0x504 (filter 2nd alignments, unmapped reads and\\nduplicates).  Use -F 0 to turn it off."
    threshold_allele_frequency: "The threshold for allele frequency, default: 0.01 or 1%"
    reference_fasta_indexed: "The reference fasta. Should be indexed (.fai).\\nDefaults to: /ngs/reference_data/genomes/Hsapiens/hg19/seq/hg19.fa.  Also short commands can be used to\\nset path to:\\nhg19 - /ngs/reference_data/genomes/Hsapiens/hg19/seq/hg19.fa\\nhg38 - /ngs/reference_data/genomes/Hsapiens/hg38/seq/hg38.fa\\nmm10 - /ngs/reference_data/genomes/Mmusculus/mm10/seq/mm10.fa"
    column_gene_name: "The column for gene name, or segment annotation"
    _print_help: ",--?                              Print this help page"
    indel_size_bp: "The indel size.  Default: 50bp"
    splice: "Output splicing read counts"
    crisp_r: "The genomic position that CRISPR/Cas9 suppose to cut, typically 3bp from the PAM NGG site and within the"
    crispr_mode_minimum: "In CRISPR mode, the minimum amount in bp that a read needs to overlap with cutting site.  If a read does\\nnot meet the criteria,\\nit will not be used for variant calling, since it is likely just a partially amplified PCR.  Default: not\\nset, or no filtering"
    include_ns_total: "Include Ns in the total depth calculation"
    indicate_perform_default: "Indicate whether to perform local realignment.  Default: 1.  Set to 0 to disable it.  For Ion or PacBio,\\n0 is recommended."
    minimum_structural_variant: "The minimum structural variant length to be presented using <DEL> <DUP> <INV> <INS>, etc. Default: 1000.\\nAny indel, complex variants less than this will be spelled out with exact nucleotides."
    minimum_matches_read: "The minimum matches for a read to be considered. If, after soft-clipping, the matched bp is less than\\nINT, then the read is discarded. It's meant for PCR based targeted sequencing where there's no insert and\\nthe matching is only the primers.\\nDefault: 0, or no filtering"
    set_reads_more: "If set, reads with mismatches more than INT will be filtered and ignored.  Gaps are not counted as"
    m_freq: "The variant frequency threshold to determine variant as good in case of monomer MSI. Default: 0.25"
    sample_name_used: "The sample name to be used directly.  Will overwrite -n option"
    regular_expression_extract: "The regular expression to extract sample name from BAM filenames.  Default to: /([^\\/\\._]+?)_[^\\/]*.bam/"
    nm_freq: "The variant frequency threshold to determine variant as good in case of non-monomer MSI. Default: 0.1"
    reads_have_mean: "The reads should have at least mean MapQ to be considered a valid variant.  Default: no filtering"
    qratio_goodqualityreadsbadqualityreads_quality: "The Qratio of (good_quality_reads)/(bad_quality_reads+0.5).  The quality is defined by -q option.\\nDefault: 1.5"
    read_position_filter: "The read position filter.  If the mean variants position is less that specified, it's considered false"
    pileup_regardless_frequency: "Do pileup regardless of the frequency"
    set_reads_less: "If set, reads with mapping quality less than INT will be filtered and ignored"
    phred_score_base: "The phred score for a base to be considered a good call.  Default: 25 (for Illumina)\\nFor PGM, set it to ~15, as PGM tends to under estimate base quality."
    region_interest_format: "The region of interest.  In the format of chr:start-end.  If end is omitted, then a single position.  No\\nBED is needed."
    minimum_variant_reads: "The minimum # of variant reads, default 2"
    column_region_start: "The column for region start, e.g. gene start"
    column_segment_starts: "The column for segment starts in the region, e.g. exon starts"
    trim: "Trim bases after [INT] bases in the reads"
    ded_up: "Indicate to remove duplicated reads.  Only one pair with same start positions will be kept"
    th: "Threads count."
    no_sv: "Turn off structural variant calling."
    indicate_mode_usingforward: "Indicate unique mode, which when mate pairs overlap, the overlapping part will be counted only once using\\nforward read only."
    un: "Indicate unique mode, which when mate pairs overlap, the overlapping part will be counted only once using\\nfirst read only."
    lowest_frequency_normal: "The lowest frequency in the normal sample allowed for a putative somatic mutation.  Defaults to 0.05"
    vcf_format_output: "VCF format output"
    vs: "How strict to be when reading a SAM or BAM."
    insert_size: "The insert size.  Used for SV calling.  Default: 300"
    extension_bp_look: "Extension of bp to look for mismatches after insersion or deletion.  Default to 2 bp, or only calls when\\nthey're within 2 bp."
    number_nucleotide_extend: "The number of nucleotide to extend for each segment, default: 0"
    ref_extension: "Extension of bp of reference to build lookup table. Default to 1200 bp. Increase the number will slowdown\\nthe program. The main purpose is to call large indels with 1000 bp that can be missed by discordant mate\\npairs."
    down_sample: "For downsampling fraction.  e.g. 0.7 means roughly 70% downsampling.  Default: No downsampling.  Use with"
    indicate_coordinates_zerobased: "Indicate whether coordinates are zero-based, as IGV uses.  Default: 1 for BED file or amplicon BED file.\\nUse 0 to turn it off. When using the -R option, it's set to 0"
    insert_std_dot: "Default: 4"
    guide_dot: "For"
    mismatches_dot: "Valid only for bowtie2/TopHat or BWA aln followed by sampe.  BWA mem is calculated as NM - Indels."
    positive_dot: "Default: 5"
    strict: "- throw an exception if something looks wrong."
    emit_warnings_keep: "- Emit warnings but keep going if possible."
    silent: "- Like LENIENT, only don't emit warning messages."
    winsertstd_int_insert: "-W,--insert-std <INT>               The insert size STD.  Used for SV calling.  Default: 100"
    caution_dot: "The"
  }
  output {
    File out_stdout = stdout()
  }
}