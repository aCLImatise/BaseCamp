version 1.0

task DvMakeExamplespy {
  input {
    Boolean? alt_aligned_pile_up
    Boolean? candidates
    Boolean? confident_regions
    Boolean? customized_classes_labeler_classes_list
    Boolean? customized_classes_labeler_info_field_name
    Boolean? down_sample_fraction
    Directory? examples
    Boolean? exclude_regions
    Boolean? gvc_f
    Boolean? gvc_f_gq_binsize
    Boolean? hts_block_size
    Boolean? hts_logging_level
    Boolean? labeler_algorithm
    Boolean? logging_every_n_candidates
    Boolean? max_reads_per_partition
    Boolean? min_base_quality
    Boolean? min_mapping_quality
    Boolean? mode
    Boolean? multi_allelic_mode
    Boolean? partition_size
    Boolean? pile_up_image_height
    Boolean? pile_up_image_width
    Boolean? population_v_cfs
    Boolean? proposed_variants
    Boolean? reads
    Boolean? ref
    Boolean? regions
    Boolean? runtime_by_region
    Boolean? sample_name
    Boolean? select_variant_types
    Boolean? sequencing_type
    Boolean? sort_by_haplotypes_sample_hp_tag
    Boolean? task_id_integer
    Boolean? training_random_emit_ref_sites
    Boolean? truth_variants
    Boolean? types_to_alt_align
    Boolean? variant_caller
    Boolean? vsc_min_count_indels
    Boolean? vsc_min_count_snps
    Boolean? vsc_min_fraction_indels
    Boolean? vsc_min_fraction_snps
    String? sample
    String read_dot
    String alignments_dot
  }
  command <<<
    dv_make_examples_py \
      ~{read_dot} \
      ~{alignments_dot} \
      ~{if (alt_aligned_pile_up) then "--alt_aligned_pileup" else ""} \
      ~{if (candidates) then "--candidates" else ""} \
      ~{if (confident_regions) then "--confident_regions" else ""} \
      ~{if (customized_classes_labeler_classes_list) then "--customized_classes_labeler_classes_list" else ""} \
      ~{if (customized_classes_labeler_info_field_name) then "--customized_classes_labeler_info_field_name" else ""} \
      ~{if (down_sample_fraction) then "--downsample_fraction" else ""} \
      ~{if defined(examples) then ("--examples " +  '"' + examples + '"') else ""} \
      ~{if (exclude_regions) then "--exclude_regions" else ""} \
      ~{if (gvc_f) then "--gvcf" else ""} \
      ~{if (gvc_f_gq_binsize) then "--gvcf_gq_binsize" else ""} \
      ~{if (hts_block_size) then "--hts_block_size" else ""} \
      ~{if (hts_logging_level) then "--hts_logging_level" else ""} \
      ~{if (labeler_algorithm) then "--labeler_algorithm" else ""} \
      ~{if (logging_every_n_candidates) then "--logging_every_n_candidates" else ""} \
      ~{if (max_reads_per_partition) then "--max_reads_per_partition" else ""} \
      ~{if (min_base_quality) then "--min_base_quality" else ""} \
      ~{if (min_mapping_quality) then "--min_mapping_quality" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (multi_allelic_mode) then "--multi_allelic_mode" else ""} \
      ~{if (partition_size) then "--partition_size" else ""} \
      ~{if (pile_up_image_height) then "--pileup_image_height" else ""} \
      ~{if (pile_up_image_width) then "--pileup_image_width" else ""} \
      ~{if (population_v_cfs) then "--population_vcfs" else ""} \
      ~{if (proposed_variants) then "--proposed_variants" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if (runtime_by_region) then "--runtime_by_region" else ""} \
      ~{if (sample_name) then "--sample_name" else ""} \
      ~{if (select_variant_types) then "--select_variant_types" else ""} \
      ~{if (sequencing_type) then "--sequencing_type" else ""} \
      ~{if (sort_by_haplotypes_sample_hp_tag) then "--sort_by_haplotypes_sample_hp_tag" else ""} \
      ~{if (task_id_integer) then "--task" else ""} \
      ~{if (training_random_emit_ref_sites) then "--training_random_emit_ref_sites" else ""} \
      ~{if (truth_variants) then "--truth_variants" else ""} \
      ~{if (types_to_alt_align) then "--types_to_alt_align" else ""} \
      ~{if (variant_caller) then "--variant_caller" else ""} \
      ~{if (vsc_min_count_indels) then "--vsc_min_count_indels" else ""} \
      ~{if (vsc_min_count_snps) then "--vsc_min_count_snps" else ""} \
      ~{if (vsc_min_fraction_indels) then "--vsc_min_fraction_indels" else ""} \
      ~{if (vsc_min_fraction_snps) then "--vsc_min_fraction_snps" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0"
  }
  parameter_meta {
    alt_aligned_pile_up: ": <none|base_channels|diff_channels|rows>: Include\\nalignments of reads against each candidate alternate allele in the pileup\\nimage. \\\"none\\\" turns this feature off. The default is \\\"none\\\".Options: \\\"none\\\",\\n\\\"base_channels\\\",\\\"diff_channels\\\", \\\"rows\\\"\\n(default: 'none')"
    candidates: ": Candidate DeepVariantCalls in tfrecord format. For DEBUGGING.\\n(default: '')"
    confident_regions: ": Regions that we are confident are hom-ref or a variant in\\nBED format. In BED or other equivalent format, sorted or unsorted. Contig\\nnames must match those of the reference genome.\\n(default: '')"
    customized_classes_labeler_classes_list: ": A comma-separated list of strings\\nthat defines customized class labels for variants. This is only set when\\nlabeler_algorithm is customized_classes_labeler.\\n(default: '')"
    customized_classes_labeler_info_field_name: ": The name from the INFO field of\\nVCF where we should get the customized class labels from. This is only set\\nwhen labeler_algorithm is customized_classes_labeler.\\n(default: '')"
    down_sample_fraction: ": If not 0.0 must be a value between 0.0 and 1.0. Reads\\nwill be kept (randomly) with a probability of downsample_fraction from the\\ninput BAM. This argument makes it easy to create examples as though the\\ninput BAM had less coverage.\\n(default: '0.0')\\n(a number)"
    examples: "Output directory for examples"
    exclude_regions: ": Optional. Space-separated list of regions we want to\\nexclude from processing. Elements can be region literals (e.g., chr20:10-20)\\nor paths to BED/BEDPE files. Region exclusion happens after processing the\\n--regions argument, so --region 20 --exclude_regions 20:100 does everything\\non chromosome 20 excluding base 100\\n(default: '')"
    gvc_f: ": Optional. Path where we should write gVCF records in TFRecord of\\nVariant proto format.\\n(default: '')"
    gvc_f_gq_binsize: ": Bin size in which to quantize gVCF genotype qualities.\\nLarger bin size reduces the number of gVCF records at a loss of quality\\ngranularity.\\n(default: '5')\\n(an integer)"
    hts_block_size: ": Sets the htslib block size. Zero or negative uses default\\nhtslib setting; larger values (e.g. 1M) may be beneficial for using remote\\nfiles. Currently only applies to SAM/BAM reading.\\n(default: '134217728')\\n(an integer)"
    hts_logging_level: ": Sets the htslib logging threshold.\\n(default: 'HTS_LOG_WARNING')"
    labeler_algorithm: ": Algorithm to use to label examples in training mode. Must\\nbe one of the LabelerAlgorithm enum values in the DeepVariantOptions proto.\\n(default: 'haplotype_labeler')"
    logging_every_n_candidates: ": Print out the log every n candidates. The\\nsmaller the number, the more frequent the logging information emits.\\n(default: '100')\\n(an integer)"
    max_reads_per_partition: ": The maximum number of reads per partition that we\\nconsider before following processing such as sampling and realigner.\\n(default: '1500')\\n(an integer)"
    min_base_quality: ": Minimum base quality. This field indicates that we are\\nenforcing a minimum base quality score for alternate alleles. Alternate\\nalleles will only be considered if all bases in the allele have a quality\\ngreater than min_base_quality.\\n(default: '10')\\n(an integer)"
    min_mapping_quality: ": By default, reads with any mapping quality are kept.\\nSetting this field to a positive integer i will only keep reads that have a\\nMAPQ >= i. Note this only applies to aligned reads.\\n(default: '5')\\n(an integer)"
    mode: ": Mode to run. Must be one of calling or training"
    multi_allelic_mode: ": How to handle multi-allelic candidate variants. For"
    partition_size: ": The maximum number of basepairs we will allow in a region\\nbefore splittingit into multiple smaller subregions.\\n(default: '1000')\\n(an integer)"
    pile_up_image_height: ": Height for the pileup image. If 0, uses the default"
    pile_up_image_width: ": Width for the pileup image. If 0, uses the default width\\n(default: '0')\\n(an integer)"
    population_v_cfs: ": Optional. Tabix-indexed VCF file (or list of VCFs broken by\\nchromosome), separated by comma or space, containing population allele\\nfrequencies."
    proposed_variants: ": (Only used when --variant_caller=vcf_candidate_importer.)\\nTabix-indexed VCF file containing the proposed positions and alts for\\n`vcf_candidate_importer`. The GTs will be ignored.\\n(default: '')"
    reads: ": Required. Aligned, sorted, indexed BAM file containing the reads we\\nwant to call. Should be aligned to a reference genome compatible with --ref.\\nCan provide multiple BAMs (comma-separated)."
    ref: ": Required. Genome reference to use. Must have an associated FAI index as\\nwell. Supports text or gzipped references. Should match the reference used\\nto align the BAM file provided to --reads."
    regions: ": Optional. Space-separated list of regions we want to process.\\nElements can be region literals (e.g., chr20:10-20) or paths to BED/BEDPE\\nfiles.\\n(default: '')"
    runtime_by_region: ": [optional] Output filename for a TSV file of runtimes and\\nother stats by region. If examples are sharded, this should be sharded into\\nthe same number of shards as the examples."
    sample_name: ": Sample name to use for our sample_name in the output\\nVariant/DeepVariantCall protos. If not specified, will be inferred from the\\nheader information from --reads.\\n(default: '')"
    select_variant_types: ": If provided, should be a whitespace-separated string\\nof variant types to keep when generating examples. Permitted values are\\n\\\"snps\\\", \\\"indels\\\", \\\"multi-allelics\\\", and \\\"all\\\", which select bi-allelic snps,\\nbi-allelic indels, multi-allelic variants of any type, and all variants,\\nrespectively. Multiple selectors can be specified, so that\\n--select_variant_types=\\\"snps indels\\\" would keep all bi-allelic SNPs and\\nindels"
    sequencing_type: ": A string representing input bam file sequencing_type.\\nPermitted values are \\\"WGS\\\" and \\\"WES\\\", which represent whole genome\\nsequencing and whole exome sequencing, respectively. This flag is\\nexperimental and is not currently being used."
    sort_by_haplotypes_sample_hp_tag: ": If set to > 0, reads with this HP tag will\\nbe sorted on top. sort_by_haplotypes has to be set to True for this to work.\\n(default: '0')\\n(an integer)"
    task_id_integer: ": Task ID of this task\\n(default: '0')\\n(an integer)"
    training_random_emit_ref_sites: ": If > 0, emit extra random reference examples\\nwith this probability.\\n(default: '0.0')\\n(a number)"
    truth_variants: ": Tabix-indexed VCF file containing the truth variant calls\\nfor this labels which we use to label our examples.\\n(default: '')"
    types_to_alt_align: ": <indels|all>: When --alt_aligned_pileup is not none,\\nthis flag determines whether to align to the alt alleles only for indels or\\nfor all variant types including SNPs. Ignored if --alt_aligned_pileup is\\n\\\"none\\\". This flag is experimental and is not compatible with the pre-trained\\nrelease models.\\n(default: 'indels')"
    variant_caller: ": The caller to use to make examples. Must be one of the\\nVariantCaller enum values in the DeepVariantOptions proto.\\n(default: 'very_sensitive_caller')"
    vsc_min_count_indels: ": Indel alleles occurring at least this many times in\\nour AlleleCount will be advanced as candidates.\\n(default: '2')\\n(an integer)"
    vsc_min_count_snps: ": SNP alleles occurring at least this many times in our\\nAlleleCount will be advanced as candidates.\\n(default: '2')\\n(an integer)"
    vsc_min_fraction_indels: ": Indel alleles occurring at least this fraction of\\nall counts in our AlleleCount will be advanced as candidates.\\n(default: '0.06')\\n(a number)"
    vsc_min_fraction_snps: ": SNP alleles occurring at least this fraction of all\\ncounts in our AlleleCount will be advanced as candidates.\\n(default: '0.12')\\n(a number)"
    sample: "Sample name"
    read_dot: "(default: 'false')"
    alignments_dot: "(default: 'false')"
  }
  output {
    File out_stdout = stdout()
    Directory out_examples = "${in_examples}"
  }
}