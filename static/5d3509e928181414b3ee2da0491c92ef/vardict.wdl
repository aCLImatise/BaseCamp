version 1.0

task Vardict.pl {
  input {
    Int? minimum_determine_default
    Int? set_reads_less
    Int? phred_score_considered
    Int? set_reads_mismatches
    Int? trim
    Int? extension_bp_look
    Int? ref_extension
    String? read_position_filter
    String? down_sample
    String? qratio_goodqualityreadsbadqualityreads_quality
    String? reads_should_at
    String? lowest_frequency_normal
    Int? indel_size_bp
    Int? minimum_matches_read
    Int? minimum_structural_variant
    String? insert_size
    String? insert_std
    String? number_std_pair
    String? crisp_r
    String? crispr_mode_amount
    String? adaptor
    Boolean? chimeric
  }
  command <<<
    vardict.pl \
      ~{if defined(minimum_determine_default) then ("-B " +  '"' + minimum_determine_default + '"') else ""} \
      ~{if defined(set_reads_less) then ("-Q " +  '"' + set_reads_less + '"') else ""} \
      ~{if defined(phred_score_considered) then ("-q " +  '"' + phred_score_considered + '"') else ""} \
      ~{if defined(set_reads_mismatches) then ("-m " +  '"' + set_reads_mismatches + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(extension_bp_look) then ("-X " +  '"' + extension_bp_look + '"') else ""} \
      ~{if defined(ref_extension) then ("--ref-extension " +  '"' + ref_extension + '"') else ""} \
      ~{if defined(read_position_filter) then ("-P " +  '"' + read_position_filter + '"') else ""} \
      ~{if defined(down_sample) then ("--downsample " +  '"' + down_sample + '"') else ""} \
      ~{if defined(qratio_goodqualityreadsbadqualityreads_quality) then ("-o " +  '"' + qratio_goodqualityreadsbadqualityreads_quality + '"') else ""} \
      ~{if defined(reads_should_at) then ("-O " +  '"' + reads_should_at + '"') else ""} \
      ~{if defined(lowest_frequency_normal) then ("-V " +  '"' + lowest_frequency_normal + '"') else ""} \
      ~{if defined(indel_size_bp) then ("-I " +  '"' + indel_size_bp + '"') else ""} \
      ~{if defined(minimum_matches_read) then ("-M " +  '"' + minimum_matches_read + '"') else ""} \
      ~{if defined(minimum_structural_variant) then ("-L " +  '"' + minimum_structural_variant + '"') else ""} \
      ~{if defined(insert_size) then ("--insert-size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(insert_std) then ("--insert-std " +  '"' + insert_std + '"') else ""} \
      ~{if defined(number_std_pair) then ("-A " +  '"' + number_std_pair + '"') else ""} \
      ~{if defined(crisp_r) then ("--crispr " +  '"' + crisp_r + '"') else ""} \
      ~{if defined(crispr_mode_amount) then ("-j " +  '"' + crispr_mode_amount + '"') else ""} \
      ~{if defined(adaptor) then ("--adaptor " +  '"' + adaptor + '"') else ""} \
      ~{true="--chimeric" false="" chimeric}
  >>>
  parameter_meta {
    minimum_determine_default: "The minimum # of reads to determine strand bias, default 2"
    set_reads_less: "If set, reads with mapping quality less than INT will be filtered and ignored"
    phred_score_considered: "The phred score for a base to be considered a good call.  Default: 22.5 (for Illumina) For PGM, set it to ~15, as PGM tends to under estimate base quality."
    set_reads_mismatches: "If set, reads with mismatches more than INT will be filtered and ignored.  Gaps are not counted as mismatches.   Valid only for bowtie2/TopHat or BWA aln followed by sampe.  BWA mem is calculated as NM - Indels.  Default: 8, or reads with more than 8 mismatches will not be used."
    trim: "Trim bases after [INT] bases in the reads"
    extension_bp_look: "Extension of bp to look for mismatches after insersion or deletion.  Default to 3 bp, or only calls when they are within 3 bp."
    ref_extension: "Extension of bp of reference to build lookup table.  Default to 1200 bp.  Increase the number will slowdown the program. The main purpose is to call large indels within 1000 bp that can be missed by discordant mate pairs."
    read_position_filter: "The read position filter.  If the mean variants position is less that specified, it is considered false positive.  Default: 5"
    down_sample: "For downsampling fraction.  e.g. 0.7 means roughly 70% downsampling.  Default: No downsampling.  Use with caution.  The downsampling will be random and non-reproducible."
    qratio_goodqualityreadsbadqualityreads_quality: "The Qratio of (good_quality_reads)/(bad_quality_reads+0.5).  The quality is defined by -q option.  Default: 1.5"
    reads_should_at: "The reads should have at least mean MapQ to be considered a valid variant.  Default: no filtering"
    lowest_frequency_normal: "The lowest frequency in normal sample allowed for a putative somatic mutations.  Default to 0.05"
    indel_size_bp: "The indel size.  Default: 50bp"
    minimum_matches_read: "The minimum matches for a read to be considered.  If, after soft-clipping, the matched bp is less than INT, then the  read is discarded.  It is meant for PCR based targeted sequencing where there is no insert and the matching is only the primers. Default: 25, or reads with matches less than 25bp will be filtered"
    minimum_structural_variant: "The minimum structural variant length to be presented using <DEL> <DUP> <INV> <INS>, etc.  Default: 500.  Any indel, complex variants less than this will be spelled out with exact nucleotides"
    insert_size: "The insert size.  Used for SV calling.  Default: 300"
    insert_std: "The insert size STD.  Used for SV calling.  Default: 100"
    number_std_pair: "The number of STD.  A pair will be considered for DEL if INSERT > INSERT_SIZE + INSERT_STD_AMT * INSERT_STD.  Default: 4"
    crisp_r: "The genomic position that CRISPR/Cas9 suppose to cut, typically 3bp from the PAM NGG site and within the guide.  For CRISPR mode only.  It will adjust the variants (mostly In-Del) start and end sites to as close to this location as possible, if there are alternatives. The option should only be used for CRISPR mode."
    crispr_mode_amount: "In CRISPR mode, the minimum amount in bp that a read needs to overlap with cutting site.  If a read does not meet the criteria, it will not be used for variant calling, since it is likely just a partially amplified PCR.  Default: not set, or no filtering "
    adaptor: "Filter adaptor sequences so that they are not used in realignment.  Multiple adaptors can be supplied by multiple of this option."
    chimeric: "Indicate to turn off chimeric reads filtering.  Chimeric reads are artifacts from library construction, where a read can be split into two segments, each will be aligned within 1-2 read length distance, but in opposite direction."
  }
}