class: CommandLineTool
id: dv_make_examples.py.cwl
inputs:
- id: in_alt_aligned_pile_up
  doc: ": <none|base_channels|diff_channels|rows>: Include\nalignments of reads against\
    \ each candidate alternate allele in the pileup\nimage. \"none\" turns this feature\
    \ off. The default is \"none\".Options: \"none\",\n\"base_channels\",\"diff_channels\"\
    , \"rows\"\n(default: 'none')"
  type: boolean?
  inputBinding:
    prefix: --alt_aligned_pileup
- id: in_candidates
  doc: ": Candidate DeepVariantCalls in tfrecord format. For DEBUGGING.\n(default:\
    \ '')"
  type: boolean?
  inputBinding:
    prefix: --candidates
- id: in_confident_regions
  doc: ": Regions that we are confident are hom-ref or a variant in\nBED format. In\
    \ BED or other equivalent format, sorted or unsorted. Contig\nnames must match\
    \ those of the reference genome.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --confident_regions
- id: in_customized_classes_labeler_classes_list
  doc: ": A comma-separated list of strings\nthat defines customized class labels\
    \ for variants. This is only set when\nlabeler_algorithm is customized_classes_labeler.\n\
    (default: '')"
  type: boolean?
  inputBinding:
    prefix: --customized_classes_labeler_classes_list
- id: in_customized_classes_labeler_info_field_name
  doc: ": The name from the INFO field of\nVCF where we should get the customized\
    \ class labels from. This is only set\nwhen labeler_algorithm is customized_classes_labeler.\n\
    (default: '')"
  type: boolean?
  inputBinding:
    prefix: --customized_classes_labeler_info_field_name
- id: in_down_sample_fraction
  doc: ": If not 0.0 must be a value between 0.0 and 1.0. Reads\nwill be kept (randomly)\
    \ with a probability of downsample_fraction from the\ninput BAM. This argument\
    \ makes it easy to create examples as though the\ninput BAM had less coverage.\n\
    (default: '0.0')\n(a number)"
  type: boolean?
  inputBinding:
    prefix: --downsample_fraction
- id: in_examples
  doc: Output directory for examples
  type: Directory?
  inputBinding:
    prefix: --examples
- id: in_exclude_regions
  doc: ": Optional. Space-separated list of regions we want to\nexclude from processing.\
    \ Elements can be region literals (e.g., chr20:10-20)\nor paths to BED/BEDPE files.\
    \ Region exclusion happens after processing the\n--regions argument, so --region\
    \ 20 --exclude_regions 20:100 does everything\non chromosome 20 excluding base\
    \ 100\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --exclude_regions
- id: in_gvc_f
  doc: ": Optional. Path where we should write gVCF records in TFRecord of\nVariant\
    \ proto format.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --gvcf
- id: in_gvc_f_gq_binsize
  doc: ": Bin size in which to quantize gVCF genotype qualities.\nLarger bin size\
    \ reduces the number of gVCF records at a loss of quality\ngranularity.\n(default:\
    \ '5')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --gvcf_gq_binsize
- id: in_hts_block_size
  doc: ": Sets the htslib block size. Zero or negative uses default\nhtslib setting;\
    \ larger values (e.g. 1M) may be beneficial for using remote\nfiles. Currently\
    \ only applies to SAM/BAM reading.\n(default: '134217728')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --hts_block_size
- id: in_hts_logging_level
  doc: ": Sets the htslib logging threshold.\n(default: 'HTS_LOG_WARNING')"
  type: boolean?
  inputBinding:
    prefix: --hts_logging_level
- id: in_labeler_algorithm
  doc: ": Algorithm to use to label examples in training mode. Must\nbe one of the\
    \ LabelerAlgorithm enum values in the DeepVariantOptions proto.\n(default: 'haplotype_labeler')"
  type: boolean?
  inputBinding:
    prefix: --labeler_algorithm
- id: in_logging_every_n_candidates
  doc: ": Print out the log every n candidates. The\nsmaller the number, the more\
    \ frequent the logging information emits.\n(default: '100')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --logging_every_n_candidates
- id: in_max_reads_per_partition
  doc: ": The maximum number of reads per partition that we\nconsider before following\
    \ processing such as sampling and realigner.\n(default: '1500')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --max_reads_per_partition
- id: in_min_base_quality
  doc: ": Minimum base quality. This field indicates that we are\nenforcing a minimum\
    \ base quality score for alternate alleles. Alternate\nalleles will only be considered\
    \ if all bases in the allele have a quality\ngreater than min_base_quality.\n\
    (default: '10')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --min_base_quality
- id: in_min_mapping_quality
  doc: ": By default, reads with any mapping quality are kept.\nSetting this field\
    \ to a positive integer i will only keep reads that have a\nMAPQ >= i. Note this\
    \ only applies to aligned reads.\n(default: '5')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --min_mapping_quality
- id: in_mode
  doc: ': Mode to run. Must be one of calling or training'
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_multi_allelic_mode
  doc: ': How to handle multi-allelic candidate variants. For'
  type: boolean?
  inputBinding:
    prefix: --multi_allelic_mode
- id: in_partition_size
  doc: ": The maximum number of basepairs we will allow in a region\nbefore splittingit\
    \ into multiple smaller subregions.\n(default: '1000')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --partition_size
- id: in_pile_up_image_height
  doc: ': Height for the pileup image. If 0, uses the default'
  type: boolean?
  inputBinding:
    prefix: --pileup_image_height
- id: in_pile_up_image_width
  doc: ": Width for the pileup image. If 0, uses the default width\n(default: '0')\n\
    (an integer)"
  type: boolean?
  inputBinding:
    prefix: --pileup_image_width
- id: in_population_v_cfs
  doc: ": Optional. Tabix-indexed VCF file (or list of VCFs broken by\nchromosome),\
    \ separated by comma or space, containing population allele\nfrequencies."
  type: boolean?
  inputBinding:
    prefix: --population_vcfs
- id: in_proposed_variants
  doc: ": (Only used when --variant_caller=vcf_candidate_importer.)\nTabix-indexed\
    \ VCF file containing the proposed positions and alts for\n`vcf_candidate_importer`.\
    \ The GTs will be ignored.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --proposed_variants
- id: in_reads
  doc: ": Required. Aligned, sorted, indexed BAM file containing the reads we\nwant\
    \ to call. Should be aligned to a reference genome compatible with --ref.\nCan\
    \ provide multiple BAMs (comma-separated)."
  type: boolean?
  inputBinding:
    prefix: --reads
- id: in_ref
  doc: ": Required. Genome reference to use. Must have an associated FAI index as\n\
    well. Supports text or gzipped references. Should match the reference used\nto\
    \ align the BAM file provided to --reads."
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_regions
  doc: ": Optional. Space-separated list of regions we want to process.\nElements\
    \ can be region literals (e.g., chr20:10-20) or paths to BED/BEDPE\nfiles.\n(default:\
    \ '')"
  type: boolean?
  inputBinding:
    prefix: --regions
- id: in_runtime_by_region
  doc: ": [optional] Output filename for a TSV file of runtimes and\nother stats by\
    \ region. If examples are sharded, this should be sharded into\nthe same number\
    \ of shards as the examples."
  type: boolean?
  inputBinding:
    prefix: --runtime_by_region
- id: in_sample_name
  doc: ": Sample name to use for our sample_name in the output\nVariant/DeepVariantCall\
    \ protos. If not specified, will be inferred from the\nheader information from\
    \ --reads.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --sample_name
- id: in_select_variant_types
  doc: ": If provided, should be a whitespace-separated string\nof variant types to\
    \ keep when generating examples. Permitted values are\n\"snps\", \"indels\", \"\
    multi-allelics\", and \"all\", which select bi-allelic snps,\nbi-allelic indels,\
    \ multi-allelic variants of any type, and all variants,\nrespectively. Multiple\
    \ selectors can be specified, so that\n--select_variant_types=\"snps indels\"\
    \ would keep all bi-allelic SNPs and\nindels"
  type: boolean?
  inputBinding:
    prefix: --select_variant_types
- id: in_sequencing_type
  doc: ": A string representing input bam file sequencing_type.\nPermitted values\
    \ are \"WGS\" and \"WES\", which represent whole genome\nsequencing and whole\
    \ exome sequencing, respectively. This flag is\nexperimental and is not currently\
    \ being used."
  type: boolean?
  inputBinding:
    prefix: --sequencing_type
- id: in_sort_by_haplotypes_sample_hp_tag
  doc: ": If set to > 0, reads with this HP tag will\nbe sorted on top. sort_by_haplotypes\
    \ has to be set to True for this to work.\n(default: '0')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --sort_by_haplotypes_sample_hp_tag
- id: in_task
  doc: ": Task ID of this task\n(default: '0')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --task
- id: in_training_random_emit_ref_sites
  doc: ": If > 0, emit extra random reference examples\nwith this probability.\n(default:\
    \ '0.0')\n(a number)"
  type: boolean?
  inputBinding:
    prefix: --training_random_emit_ref_sites
- id: in_truth_variants
  doc: ": Tabix-indexed VCF file containing the truth variant calls\nfor this labels\
    \ which we use to label our examples.\n(default: '')"
  type: boolean?
  inputBinding:
    prefix: --truth_variants
- id: in_types_to_alt_align
  doc: ": <indels|all>: When --alt_aligned_pileup is not none,\nthis flag determines\
    \ whether to align to the alt alleles only for indels or\nfor all variant types\
    \ including SNPs. Ignored if --alt_aligned_pileup is\n\"none\". This flag is experimental\
    \ and is not compatible with the pre-trained\nrelease models.\n(default: 'indels')"
  type: boolean?
  inputBinding:
    prefix: --types_to_alt_align
- id: in_variant_caller
  doc: ": The caller to use to make examples. Must be one of the\nVariantCaller enum\
    \ values in the DeepVariantOptions proto.\n(default: 'very_sensitive_caller')"
  type: boolean?
  inputBinding:
    prefix: --variant_caller
- id: in_vsc_min_count_indels
  doc: ": Indel alleles occurring at least this many times in\nour AlleleCount will\
    \ be advanced as candidates.\n(default: '2')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --vsc_min_count_indels
- id: in_vsc_min_count_snps
  doc: ": SNP alleles occurring at least this many times in our\nAlleleCount will\
    \ be advanced as candidates.\n(default: '2')\n(an integer)"
  type: boolean?
  inputBinding:
    prefix: --vsc_min_count_snps
- id: in_vsc_min_fraction_indels
  doc: ": Indel alleles occurring at least this fraction of\nall counts in our AlleleCount\
    \ will be advanced as candidates.\n(default: '0.06')\n(a number)"
  type: boolean?
  inputBinding:
    prefix: --vsc_min_fraction_indels
- id: in_vsc_min_fraction_snps
  doc: ": SNP alleles occurring at least this fraction of all\ncounts in our AlleleCount\
    \ will be advanced as candidates.\n(default: '0.12')\n(a number)"
  type: boolean?
  inputBinding:
    prefix: --vsc_min_fraction_snps
- id: in_sample
  doc: Sample name
  type: string?
  inputBinding:
    prefix: --sample
- id: in_read_dot
  doc: "(default: 'false')"
  type: string
  inputBinding:
    position: 0
- id: in_alignments_dot
  doc: "(default: 'false')"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_examples
  doc: Output directory for examples
  type: Directory?
  outputBinding:
    glob: $(inputs.in_examples)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0
cwlVersion: v1.1
baseCommand:
- dv_make_examples.py
