class: CommandLineTool
id: vardict_java.cwl
inputs:
- id: in_indicate_move_indels
  doc: Indicate to move indels to 3-prime if alternative alignment can be achieved.
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_number_std_pair
  doc: The number of STD. A pair will be considered for DEL if INSERT > INSERT_SIZE
    + INSERT_STD_AMT *
  type: long?
  inputBinding:
    prefix: -A
- id: in_amplicon
  doc: "<int:float>           Indicate it's amplicon based calling.  Reads that don't\
    \ map to the amplicon will be skipped.  A read pair\nis considered belonging \
    \ to the amplicon if the edges are less than int bp to the amplicon, and overlap\n\
    fraction is at least float.  Default: 10:0.95"
  type: boolean?
  inputBinding:
    prefix: --amplicon
- id: in_adaptor
  doc: "Filter adaptor sequences so that they are not used in realignment. Multiple\
    \ adaptors can be supplied by\nsetting them with comma, like: --adaptor ACGTTGCTC,ACGGGGTCTC,ACGCGGCTAG\
    \ ."
  type: string?
  inputBinding:
    prefix: -adaptor
- id: in_minimum_reads_determine
  doc: 'The minimum # of reads to determine strand bias, default 2'
  type: long?
  inputBinding:
    prefix: -B
- id: in_indexed_bam_file
  doc: The indexed BAM file
  type: File?
  inputBinding:
    prefix: -b
- id: in_indicate_chromosome_names
  doc: Indicate the chromosome names are just numbers, such as 1, 2, not chr1, chr2
    (deprecated)
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_the_column_chromosome
  doc: The column for chromosome
  type: long?
  inputBinding:
    prefix: -c
- id: in_chimeric
  doc: Indicate to turn off chimeric reads filtering.
  type: boolean?
  inputBinding:
    prefix: -chimeric
- id: in_debug
  doc: Debug mode.  Will print some error messages and append full genotype at the
    end.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_delimiter_split_tab
  doc: The delimiter for split region_info, default to tab "\t"
  type: string?
  inputBinding:
    prefix: -d
- id: in_del_dup_var
  doc: "Turn on deleting of duplicate variants. Variants in this mode are considered\
    \ and outputted only if start\nposition of variant is inside the region interest."
  type: boolean?
  inputBinding:
    prefix: -deldupvar
- id: in_default_printer
  doc: 'The printer type used for different outputs. Default: OUT (i.e. System.out).'
  type: string?
  inputBinding:
    prefix: --default-printer
- id: in_column_region_end
  doc: The column for region end, e.g. gene end
  type: long?
  inputBinding:
    prefix: -E
- id: in_column_segment_ends
  doc: The column for segment ends in the region, e.g. exon ends
  type: long?
  inputBinding:
    prefix: -e
- id: in_hexical_filter_reads
  doc: "The hexical to filter reads using samtools. Default: 0x504 (filter 2nd alignments,\
    \ unmapped reads and\nduplicates).  Use -F 0 to turn it off."
  type: long?
  inputBinding:
    prefix: -F
- id: in_threshold_allele_frequency
  doc: 'The threshold for allele frequency, default: 0.01 or 1%'
  type: double?
  inputBinding:
    prefix: -f
- id: in_fisher
  doc: "Experimental feature: Changes R script (teststrandbias.R and testsomatic.)\
    \ to Java implementation of\nFisher exact test."
  type: boolean?
  inputBinding:
    prefix: -fisher
- id: in_reference_fasta_indexed
  doc: "The reference fasta. Should be indexed (.fai).\nDefaults to: /ngs/reference_data/genomes/Hsapiens/hg19/seq/hg19.fa.\
    \  Also short commands can be used to\nset path to:\nhg19 - /ngs/reference_data/genomes/Hsapiens/hg19/seq/hg19.fa\n\
    hg38 - /ngs/reference_data/genomes/Hsapiens/hg38/seq/hg38.fa\nmm10 - /ngs/reference_data/genomes/Mmusculus/mm10/seq/mm10.fa"
  type: File?
  inputBinding:
    prefix: -G
- id: in_column_gene_name
  doc: The column for gene name, or segment annotation
  type: long?
  inputBinding:
    prefix: -g
- id: in__print_help
  doc: ',--?                              Print this help page'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_indel_size_bp
  doc: 'The indel size.  Default: 50bp'
  type: long?
  inputBinding:
    prefix: -I
- id: in_splice
  doc: Output splicing read counts
  type: boolean?
  inputBinding:
    prefix: --splice
- id: in_crisp_r
  doc: The genomic position that CRISPR/Cas9 suppose to cut, typically 3bp from the
    PAM NGG site and within the
  type: long?
  inputBinding:
    prefix: --crispr
- id: in_crispr_mode_minimum
  doc: "In CRISPR mode, the minimum amount in bp that a read needs to overlap with\
    \ cutting site.  If a read does\nnot meet the criteria,\nit will not be used for\
    \ variant calling, since it is likely just a partially amplified PCR.  Default:\
    \ not\nset, or no filtering"
  type: string?
  inputBinding:
    prefix: -j
- id: in_include_ns_total
  doc: Include Ns in the total depth calculation
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_indicate_perform_default
  doc: "Indicate whether to perform local realignment.  Default: 1.  Set to 0 to disable\
    \ it.  For Ion or PacBio,\n0 is recommended."
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimum_structural_variant
  doc: "The minimum structural variant length to be presented using <DEL> <DUP> <INV>\
    \ <INS>, etc. Default: 1000.\nAny indel, complex variants less than this will\
    \ be spelled out with exact nucleotides."
  type: long?
  inputBinding:
    prefix: -L
- id: in_minimum_matches_read
  doc: "The minimum matches for a read to be considered. If, after soft-clipping,\
    \ the matched bp is less than\nINT, then the read is discarded. It's meant for\
    \ PCR based targeted sequencing where there's no insert and\nthe matching is only\
    \ the primers.\nDefault: 0, or no filtering"
  type: long?
  inputBinding:
    prefix: -M
- id: in_set_reads_more
  doc: If set, reads with mismatches more than INT will be filtered and ignored.  Gaps
    are not counted as
  type: long?
  inputBinding:
    prefix: -m
- id: in_m_freq
  doc: 'The variant frequency threshold to determine variant as good in case of monomer
    MSI. Default: 0.25'
  type: double?
  inputBinding:
    prefix: -mfreq
- id: in_sample_name_used
  doc: The sample name to be used directly.  Will overwrite -n option
  type: string?
  inputBinding:
    prefix: -N
- id: in_regular_expression_extract
  doc: 'The regular expression to extract sample name from BAM filenames.  Default
    to: /([^\/\._]+?)_[^\/]*.bam/'
  type: string?
  inputBinding:
    prefix: -n
- id: in_nm_freq
  doc: 'The variant frequency threshold to determine variant as good in case of non-monomer
    MSI. Default: 0.1'
  type: double?
  inputBinding:
    prefix: -nmfreq
- id: in_reads_have_mean
  doc: 'The reads should have at least mean MapQ to be considered a valid variant.  Default:
    no filtering'
  type: string?
  inputBinding:
    prefix: -O
- id: in_qratio_goodqualityreadsbadqualityreads_quality
  doc: "The Qratio of (good_quality_reads)/(bad_quality_reads+0.5).  The quality is\
    \ defined by -q option.\nDefault: 1.5"
  type: double?
  inputBinding:
    prefix: -o
- id: in_read_position_filter
  doc: The read position filter.  If the mean variants position is less that specified,
    it's considered false
  type: long?
  inputBinding:
    prefix: -P
- id: in_pileup_regardless_frequency
  doc: Do pileup regardless of the frequency
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_set_reads_less
  doc: If set, reads with mapping quality less than INT will be filtered and ignored
  type: long?
  inputBinding:
    prefix: -Q
- id: in_phred_score_base
  doc: "The phred score for a base to be considered a good call.  Default: 25 (for\
    \ Illumina)\nFor PGM, set it to ~15, as PGM tends to under estimate base quality."
  type: long?
  inputBinding:
    prefix: -q
- id: in_region_interest_format
  doc: "The region of interest.  In the format of chr:start-end.  If end is omitted,\
    \ then a single position.  No\nBED is needed."
  type: string?
  inputBinding:
    prefix: -R
- id: in_minimum_variant_reads
  doc: 'The minimum # of variant reads, default 2'
  type: long?
  inputBinding:
    prefix: -r
- id: in_column_region_start
  doc: The column for region start, e.g. gene start
  type: long?
  inputBinding:
    prefix: -S
- id: in_column_segment_starts
  doc: The column for segment starts in the region, e.g. exon starts
  type: long?
  inputBinding:
    prefix: -s
- id: in_trim
  doc: Trim bases after [INT] bases in the reads
  type: long?
  inputBinding:
    prefix: --trim
- id: in_ded_up
  doc: Indicate to remove duplicated reads.  Only one pair with same start positions
    will be kept
  type: boolean?
  inputBinding:
    prefix: --dedup
- id: in_th
  doc: Threads count.
  type: long?
  inputBinding:
    prefix: -th
- id: in_no_sv
  doc: Turn off structural variant calling.
  type: boolean?
  inputBinding:
    prefix: --nosv
- id: in_indicate_mode_usingforward
  doc: "Indicate unique mode, which when mate pairs overlap, the overlapping part\
    \ will be counted only once using\nforward read only."
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_un
  doc: "Indicate unique mode, which when mate pairs overlap, the overlapping part\
    \ will be counted only once using\nfirst read only."
  type: boolean?
  inputBinding:
    prefix: -UN
- id: in_lowest_frequency_normal
  doc: The lowest frequency in the normal sample allowed for a putative somatic mutation.  Defaults
    to 0.05
  type: double?
  inputBinding:
    prefix: -V
- id: in_vcf_format_output
  doc: VCF format output
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_vs
  doc: How strict to be when reading a SAM or BAM.
  type: string?
  inputBinding:
    prefix: -VS
- id: in_insert_size
  doc: 'The insert size.  Used for SV calling.  Default: 300'
  type: long?
  inputBinding:
    prefix: --insert-size
- id: in_extension_bp_look
  doc: "Extension of bp to look for mismatches after insersion or deletion.  Default\
    \ to 2 bp, or only calls when\nthey're within 2 bp."
  type: long?
  inputBinding:
    prefix: -X
- id: in_number_nucleotide_extend
  doc: 'The number of nucleotide to extend for each segment, default: 0'
  type: long?
  inputBinding:
    prefix: -x
- id: in_ref_extension
  doc: "Extension of bp of reference to build lookup table. Default to 1200 bp. Increase\
    \ the number will slowdown\nthe program. The main purpose is to call large indels\
    \ with 1000 bp that can be missed by discordant mate\npairs."
  type: long?
  inputBinding:
    prefix: --ref-extension
- id: in_down_sample
  doc: 'For downsampling fraction.  e.g. 0.7 means roughly 70% downsampling.  Default:
    No downsampling.  Use with'
  type: double?
  inputBinding:
    prefix: --downsample
- id: in_indicate_coordinates_zerobased
  doc: "Indicate whether coordinates are zero-based, as IGV uses.  Default: 1 for\
    \ BED file or amplicon BED file.\nUse 0 to turn it off. When using the -R option,\
    \ it's set to 0"
  type: long?
  inputBinding:
    prefix: -z
- id: in_insert_std_dot
  doc: 'Default: 4'
  type: string
  inputBinding:
    position: 0
- id: in_guide_dot
  doc: For
  type: string
  inputBinding:
    position: 1
- id: in_mismatches_dot
  doc: Valid only for bowtie2/TopHat or BWA aln followed by sampe.  BWA mem is calculated
    as NM - Indels.
  type: string
  inputBinding:
    position: 0
- id: in_positive_dot
  doc: 'Default: 5'
  type: string
  inputBinding:
    position: 0
- id: in_strict
  doc: '- throw an exception if something looks wrong.'
  type: string
  inputBinding:
    position: 1
- id: in_emit_warnings_keep
  doc: '- Emit warnings but keep going if possible.'
  type: string
  inputBinding:
    position: 2
- id: in_silent
  doc: "- Like LENIENT, only don't emit warning messages."
  type: string
  inputBinding:
    position: 3
- id: in_winsertstd_int_insert
  doc: '-W,--insert-std <INT>               The insert size STD.  Used for SV calling.  Default:
    100'
  type: string
  inputBinding:
    position: 0
- id: in_caution_dot
  doc: The
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vardict-java:1.8.2--0
cwlVersion: v1.1
baseCommand:
- vardict-java
