class: CommandLineTool
id: hap.py.cwl
inputs:
- id: reference
  doc: Specify a reference file.
  type: string
  inputBinding:
    prefix: --reference
- id: report_prefix
  doc: Filename prefix for report output.
  type: string
  inputBinding:
    prefix: --report-prefix
- id: scratch_prefix
  doc: Directory for scratch files.
  type: string
  inputBinding:
    prefix: --scratch-prefix
- id: keep_scratch
  doc: Filename prefix for scratch report output.
  type: boolean
  inputBinding:
    prefix: --keep-scratch
- id: type
  doc: Annotation format in input VCF file.
  type: string
  inputBinding:
    prefix: --type
- id: false_positives
  doc: False positive / confident call regions (.bed or .bed.gz). Calls outside these
    regions will be labelled as UNK.
  type: string
  inputBinding:
    prefix: --false-positives
- id: stratification
  doc: Stratification file list (TSV format -- first column is region name, second
    column is file name).
  type: string
  inputBinding:
    prefix: --stratification
- id: stratification_region
  doc: Add single stratification region, e.g. --stratification-region TEST:test.bed
  type: string
  inputBinding:
    prefix: --stratification-region
- id: stratification_fix_chr
  doc: Add chr prefix to stratification files if necessary
  type: boolean
  inputBinding:
    prefix: --stratification-fixchr
- id: write_vcf
  doc: Write an annotated VCF.
  type: boolean
  inputBinding:
    prefix: --write-vcf
- id: write_counts
  doc: Write advanced counts and metrics.
  type: boolean
  inputBinding:
    prefix: --write-counts
- id: no_write_counts
  doc: Do not write advanced counts and metrics.
  type: boolean
  inputBinding:
    prefix: --no-write-counts
- id: output_vtc
  doc: Write VTC field in the final VCF which gives the counts each position has contributed
    to.
  type: boolean
  inputBinding:
    prefix: --output-vtc
- id: preserve_info
  doc: When using XCMP, preserve and merge the INFO fields in truth and query. Useful
    for ROC computation.
  type: boolean
  inputBinding:
    prefix: --preserve-info
- id: roc
  doc: Select a feature to produce a ROC on (INFO feature, QUAL, GQX, ...).
  type: string
  inputBinding:
    prefix: --roc
- id: no_roc
  doc: Disable ROC computation and only output summary statistics for more concise
    output.
  type: boolean
  inputBinding:
    prefix: --no-roc
- id: roc_regions
  doc: Select a list of regions to compute ROCs in. By default, only the '*' region
    will produce ROC output (aggregate variant counts).
  type: string
  inputBinding:
    prefix: --roc-regions
- id: roc_filter
  doc: Select a filter to ignore when making ROCs.
  type: string
  inputBinding:
    prefix: --roc-filter
- id: roc_delta
  doc: Minimum spacing between ROC QQ levels.
  type: string
  inputBinding:
    prefix: --roc-delta
- id: ci_alpha
  doc: Confidence level for Jeffrey's CI for recall, precision and fraction of non-assessed
    calls.
  type: string
  inputBinding:
    prefix: --ci-alpha
- id: no_json
  doc: Disable JSON file output.
  type: boolean
  inputBinding:
    prefix: --no-json
- id: location
  doc: Comma-separated list of locations [use naming after preprocessing], when not
    specified will use whole VCF.
  type: string
  inputBinding:
    prefix: --location
- id: pass_only
  doc: Keep only PASS variants.
  type: boolean
  inputBinding:
    prefix: --pass-only
- id: filters_only
  doc: Specify a comma-separated list of filters to apply (by default all filters
    are ignored / passed on.
  type: string
  inputBinding:
    prefix: --filters-only
- id: restrict_regions
  doc: Restrict analysis to given (sparse) regions (using -R in bcftools).
  type: string
  inputBinding:
    prefix: --restrict-regions
- id: target_regions
  doc: Restrict analysis to given (dense) regions (using -T in bcftools).
  type: string
  inputBinding:
    prefix: --target-regions
- id: left_shift
  doc: Left-shift variants safely.
  type: boolean
  inputBinding:
    prefix: --leftshift
- id: no_left_shift
  doc: Do not left-shift variants safely.
  type: boolean
  inputBinding:
    prefix: --no-leftshift
- id: decompose
  doc: Decompose variants into primitives. This results in more granular counts.
  type: boolean
  inputBinding:
    prefix: --decompose
- id: no_decompose
  doc: Do not decompose variants into primitives.
  type: boolean
  inputBinding:
    prefix: --no-decompose
- id: bcf_tools_norm
  doc: Enable preprocessing through bcftools norm -c x -D (requires external preprocessing
    to be switched on).
  type: boolean
  inputBinding:
    prefix: --bcftools-norm
- id: fix_chr
  doc: 'Add chr prefix to VCF records where necessary (default: auto, attempt to match
    reference).'
  type: boolean
  inputBinding:
    prefix: --fixchr
- id: no_fix_chr
  doc: 'Do not add chr prefix to VCF records (default: auto, attempt to match reference).'
  type: boolean
  inputBinding:
    prefix: --no-fixchr
- id: bcf
  doc: Use BCF internally. This is the default when the input file is in BCF format
    already. Using BCF can speed up temp file access, but may fail for VCF files that
    have broken headers or records that don't comply with the header.
  type: boolean
  inputBinding:
    prefix: --bcf
- id: somatic
  doc: Assume the input file is a somatic call file and squash all columns into one,
    putting all FORMATs into INFO + use half genotypes (see also --set-gt). This will
    replace all sample columns and replace them with a single one.
  type: boolean
  inputBinding:
    prefix: --somatic
- id: set_gt
  doc: 'This is used to treat Strelka somatic files Possible values for this parameter:
    half / hemi / het / hom / half to assign one of the following genotypes to the
    resulting sample: 1 | 0/1 | 1/1 | ./1. This will replace all sample columns and
    replace them with a single one.'
  type: string
  inputBinding:
    prefix: --set-gt
- id: filter_non_ref
  doc: Remove any variants genotyped as <NON_REF>.
  type: boolean
  inputBinding:
    prefix: --filter-nonref
- id: convert_gvc_f_truth
  doc: Convert the truth set from genome VCF format to a VCF before processing.
  type: boolean
  inputBinding:
    prefix: --convert-gvcf-truth
- id: convert_gvc_f_query
  doc: Convert the query set from genome VCF format to a VCF before processing.
  type: boolean
  inputBinding:
    prefix: --convert-gvcf-query
- id: gender
  doc: 'Specify sex. This determines how haploid calls on chrX get treated: for male
    samples, all non-ref calls (in the truthset only when running through hap.py)
    are given a 1/1 genotype.'
  type: string
  inputBinding:
    prefix: --gender
- id: preprocess_truth
  doc: Preprocess truth file with same settings as query (default is to accept truth
    in original format).
  type: boolean
  inputBinding:
    prefix: --preprocess-truth
- id: use_filtered_truth
  doc: Use filtered variant calls in truth file (by default, only PASS calls in the
    truth file are used)
  type: boolean
  inputBinding:
    prefix: --usefiltered-truth
- id: preprocessing_window_size
  doc: Preprocessing window size (variants further apart than that size are not expected
    to interfere).
  type: string
  inputBinding:
    prefix: --preprocessing-window-size
- id: adjust_conf_regions
  doc: Adjust confident regions to include variant locations. Note this will only
    include variants that are included in the CONF regions already when viewing with
    bcftools; this option only makes sure insertions are padded correctly in the CONF
    regions (to capture these, both the base before and after must be contained in
    the bed file).
  type: boolean
  inputBinding:
    prefix: --adjust-conf-regions
- id: no_adjust_conf_regions
  doc: Do not adjust confident regions for insertions.
  type: boolean
  inputBinding:
    prefix: --no-adjust-conf-regions
- id: no_haplotype_comparison
  doc: Disable haplotype comparison (only count direct GT matches as TP).
  type: boolean
  inputBinding:
    prefix: --no-haplotype-comparison
- id: window_size
  doc: Minimum distance between variants such that they fall into the same superlocus.
  type: string
  inputBinding:
    prefix: --window-size
- id: x_cmp_enumeration_threshold
  doc: Enumeration threshold / maximum number of sequences to enumerate per block.
  type: long
  inputBinding:
    prefix: --xcmp-enumeration-threshold
- id: x_cmp_expand_hap_blocks
  doc: Expand haplotype blocks by this many basepairs left and right.
  type: string
  inputBinding:
    prefix: --xcmp-expand-hapblocks
- id: threads
  doc: Number of threads to use.
  type: string
  inputBinding:
    prefix: --threads
- id: engine
  doc: Comparison engine to use.
  type: string
  inputBinding:
    prefix: --engine
- id: engine_vcf_eval_path
  doc: This parameter should give the path to the "rtg" executable. The default is
    rtg
  type: string
  inputBinding:
    prefix: --engine-vcfeval-path
- id: engine_vcf_eval_template
  doc: Vcfeval needs the reference sequence formatted in its own file format (SDF
    -- run rtg format -o ref.SDF ref.fa). You can specify this here to save time when
    running hap.py with vcfeval. If no SDF folder is specified, hap.py will create
    a temporary one.
  type: string
  inputBinding:
    prefix: --engine-vcfeval-template
- id: scmp_distance
  doc: For distance-based matching (vcfeval and scmp), this is the distance between
    variants to use.
  type: string
  inputBinding:
    prefix: --scmp-distance
- id: lose_match_distance
  doc: For distance-based matching (vcfeval and scmp), this is the distance between
    variants to use.
  type: string
  inputBinding:
    prefix: --lose-match-distance
- id: log_file
  doc: Write logging information into file rather than to stderr
  type: string
  inputBinding:
    prefix: --logfile
- id: verbose
  doc: Raise logging level from warning to info.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Set logging level to output errors only.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- hap.py
