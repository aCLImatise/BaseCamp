#!/usr/bin/env cwl-runner

baseCommand:
- hap.py
class: CommandLineTool
cwlVersion: v1.0
id: hap.py
inputs:
- doc: Specify a reference file.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Filename prefix for report output.
  id: report_prefix
  inputBinding:
    prefix: --report-prefix
  type: string
- doc: Directory for scratch files.
  id: scratch_prefix
  inputBinding:
    prefix: --scratch-prefix
  type: string
- doc: Filename prefix for scratch report output.
  id: keep_scratch
  inputBinding:
    prefix: --keep-scratch
  type: boolean
- doc: Annotation format in input VCF file.
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: False positive / confident call regions (.bed or .bed.gz). Calls outside these
    regions will be labelled as UNK.
  id: false_positives
  inputBinding:
    prefix: --false-positives
  type: string
- doc: Stratification file list (TSV format -- first column is region name, second
    column is file name).
  id: stratification
  inputBinding:
    prefix: --stratification
  type: string
- doc: Add single stratification region, e.g. --stratification-region TEST:test.bed
  id: stratification_region
  inputBinding:
    prefix: --stratification-region
  type: string
- doc: Add chr prefix to stratification files if necessary
  id: stratification_fix_chr
  inputBinding:
    prefix: --stratification-fixchr
  type: boolean
- doc: Write an annotated VCF.
  id: write_vcf
  inputBinding:
    prefix: --write-vcf
  type: boolean
- doc: Write advanced counts and metrics.
  id: write_counts
  inputBinding:
    prefix: --write-counts
  type: boolean
- doc: Do not write advanced counts and metrics.
  id: no_write_counts
  inputBinding:
    prefix: --no-write-counts
  type: boolean
- doc: Write VTC field in the final VCF which gives the counts each position has contributed
    to.
  id: output_vtc
  inputBinding:
    prefix: --output-vtc
  type: boolean
- doc: When using XCMP, preserve and merge the INFO fields in truth and query. Useful
    for ROC computation.
  id: preserve_info
  inputBinding:
    prefix: --preserve-info
  type: boolean
- doc: Select a feature to produce a ROC on (INFO feature, QUAL, GQX, ...).
  id: roc
  inputBinding:
    prefix: --roc
  type: string
- doc: Disable ROC computation and only output summary statistics for more concise
    output.
  id: no_roc
  inputBinding:
    prefix: --no-roc
  type: boolean
- doc: Select a list of regions to compute ROCs in. By default, only the '*' region
    will produce ROC output (aggregate variant counts).
  id: roc_regions
  inputBinding:
    prefix: --roc-regions
  type: string
- doc: Select a filter to ignore when making ROCs.
  id: roc_filter
  inputBinding:
    prefix: --roc-filter
  type: string
- doc: Minimum spacing between ROC QQ levels.
  id: roc_delta
  inputBinding:
    prefix: --roc-delta
  type: string
- doc: Confidence level for Jeffrey's CI for recall, precision and fraction of non-assessed
    calls.
  id: ci_alpha
  inputBinding:
    prefix: --ci-alpha
  type: string
- doc: Disable JSON file output.
  id: no_json
  inputBinding:
    prefix: --no-json
  type: boolean
- doc: Comma-separated list of locations [use naming after preprocessing], when not
    specified will use whole VCF.
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: Keep only PASS variants.
  id: pass_only
  inputBinding:
    prefix: --pass-only
  type: boolean
- doc: Specify a comma-separated list of filters to apply (by default all filters
    are ignored / passed on.
  id: filters_only
  inputBinding:
    prefix: --filters-only
  type: string
- doc: Restrict analysis to given (sparse) regions (using -R in bcftools).
  id: restrict_regions
  inputBinding:
    prefix: --restrict-regions
  type: string
- doc: Restrict analysis to given (dense) regions (using -T in bcftools).
  id: target_regions
  inputBinding:
    prefix: --target-regions
  type: string
- doc: Left-shift variants safely.
  id: left_shift
  inputBinding:
    prefix: --leftshift
  type: boolean
- doc: Do not left-shift variants safely.
  id: no_left_shift
  inputBinding:
    prefix: --no-leftshift
  type: boolean
- doc: Decompose variants into primitives. This results in more granular counts.
  id: decompose
  inputBinding:
    prefix: --decompose
  type: boolean
- doc: Do not decompose variants into primitives.
  id: no_decompose
  inputBinding:
    prefix: --no-decompose
  type: boolean
- doc: Enable preprocessing through bcftools norm -c x -D (requires external preprocessing
    to be switched on).
  id: bcf_tools_norm
  inputBinding:
    prefix: --bcftools-norm
  type: boolean
- doc: 'Add chr prefix to VCF records where necessary (default: auto, attempt to match
    reference).'
  id: fix_chr
  inputBinding:
    prefix: --fixchr
  type: boolean
- doc: 'Do not add chr prefix to VCF records (default: auto, attempt to match reference).'
  id: no_fix_chr
  inputBinding:
    prefix: --no-fixchr
  type: boolean
- doc: Use BCF internally. This is the default when the input file is in BCF format
    already. Using BCF can speed up temp file access, but may fail for VCF files that
    have broken headers or records that don't comply with the header.
  id: bcf
  inputBinding:
    prefix: --bcf
  type: boolean
- doc: Assume the input file is a somatic call file and squash all columns into one,
    putting all FORMATs into INFO + use half genotypes (see also --set-gt). This will
    replace all sample columns and replace them with a single one.
  id: somatic
  inputBinding:
    prefix: --somatic
  type: boolean
- doc: 'This is used to treat Strelka somatic files Possible values for this parameter:
    half / hemi / het / hom / half to assign one of the following genotypes to the
    resulting sample: 1 | 0/1 | 1/1 | ./1. This will replace all sample columns and
    replace them with a single one.'
  id: set_gt
  inputBinding:
    prefix: --set-gt
  type: string
- doc: Remove any variants genotyped as <NON_REF>.
  id: filter_non_ref
  inputBinding:
    prefix: --filter-nonref
  type: boolean
- doc: Convert the truth set from genome VCF format to a VCF before processing.
  id: convert_gvc_f_truth
  inputBinding:
    prefix: --convert-gvcf-truth
  type: boolean
- doc: Convert the query set from genome VCF format to a VCF before processing.
  id: convert_gvc_f_query
  inputBinding:
    prefix: --convert-gvcf-query
  type: boolean
- doc: 'Specify sex. This determines how haploid calls on chrX get treated: for male
    samples, all non-ref calls (in the truthset only when running through hap.py)
    are given a 1/1 genotype.'
  id: gender
  inputBinding:
    prefix: --gender
  type: string
- doc: Preprocess truth file with same settings as query (default is to accept truth
    in original format).
  id: preprocess_truth
  inputBinding:
    prefix: --preprocess-truth
  type: boolean
- doc: Use filtered variant calls in truth file (by default, only PASS calls in the
    truth file are used)
  id: use_filtered_truth
  inputBinding:
    prefix: --usefiltered-truth
  type: boolean
- doc: Preprocessing window size (variants further apart than that size are not expected
    to interfere).
  id: preprocessing_window_size
  inputBinding:
    prefix: --preprocessing-window-size
  type: string
- doc: Adjust confident regions to include variant locations. Note this will only
    include variants that are included in the CONF regions already when viewing with
    bcftools; this option only makes sure insertions are padded correctly in the CONF
    regions (to capture these, both the base before and after must be contained in
    the bed file).
  id: adjust_conf_regions
  inputBinding:
    prefix: --adjust-conf-regions
  type: boolean
- doc: Do not adjust confident regions for insertions.
  id: no_adjust_conf_regions
  inputBinding:
    prefix: --no-adjust-conf-regions
  type: boolean
- doc: Disable haplotype comparison (only count direct GT matches as TP).
  id: no_haplotype_comparison
  inputBinding:
    prefix: --no-haplotype-comparison
  type: boolean
- doc: Minimum distance between variants such that they fall into the same superlocus.
  id: window_size
  inputBinding:
    prefix: --window-size
  type: string
- doc: Enumeration threshold / maximum number of sequences to enumerate per block.
  id: x_cmp_enumeration_threshold
  inputBinding:
    prefix: --xcmp-enumeration-threshold
  type: long
- doc: Expand haplotype blocks by this many basepairs left and right.
  id: x_cmp_expand_hap_blocks
  inputBinding:
    prefix: --xcmp-expand-hapblocks
  type: string
- doc: Number of threads to use.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Comparison engine to use.
  id: engine
  inputBinding:
    prefix: --engine
  type: string
- doc: This parameter should give the path to the "rtg" executable. The default is
    rtg
  id: engine_vcf_eval_path
  inputBinding:
    prefix: --engine-vcfeval-path
  type: string
- doc: Vcfeval needs the reference sequence formatted in its own file format (SDF
    -- run rtg format -o ref.SDF ref.fa). You can specify this here to save time when
    running hap.py with vcfeval. If no SDF folder is specified, hap.py will create
    a temporary one.
  id: engine_vcf_eval_template
  inputBinding:
    prefix: --engine-vcfeval-template
  type: string
- doc: For distance-based matching (vcfeval and scmp), this is the distance between
    variants to use.
  id: scmp_distance
  inputBinding:
    prefix: --scmp-distance
  type: string
- doc: For distance-based matching (vcfeval and scmp), this is the distance between
    variants to use.
  id: lose_match_distance
  inputBinding:
    prefix: --lose-match-distance
  type: string
- doc: Write logging information into file rather than to stderr
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: Raise logging level from warning to info.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Set logging level to output errors only.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
