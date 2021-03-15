class: CommandLineTool
id: hap.py.cwl
inputs:
- id: in_reference
  doc: Specify a reference file.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_report_prefix
  doc: Filename prefix for report output.
  type: File?
  inputBinding:
    prefix: --report-prefix
- id: in_scratch_prefix
  doc: Directory for scratch files.
  type: Directory?
  inputBinding:
    prefix: --scratch-prefix
- id: in_keep_scratch
  doc: Filename prefix for scratch report output.
  type: File?
  inputBinding:
    prefix: --keep-scratch
- id: in_type
  doc: Annotation format in input VCF file.
  type: string?
  inputBinding:
    prefix: --type
- id: in_false_positives
  doc: "False positive / confident call regions (.bed or\n.bed.gz). Calls outside\
    \ these regions will be labelled\nas UNK."
  type: File?
  inputBinding:
    prefix: --false-positives
- id: in_stratification
  doc: "Stratification file list (TSV format -- first column\nis region name, second\
    \ column is file name)."
  type: File?
  inputBinding:
    prefix: --stratification
- id: in_stratification_region
  doc: "Add single stratification region, e.g.\n--stratification-region TEST:test.bed"
  type: string?
  inputBinding:
    prefix: --stratification-region
- id: in_stratification_fix_chr
  doc: Add chr prefix to stratification files if necessary
  type: boolean?
  inputBinding:
    prefix: --stratification-fixchr
- id: in_write_vcf
  doc: Write an annotated VCF.
  type: boolean?
  inputBinding:
    prefix: --write-vcf
- id: in_write_counts
  doc: Write advanced counts and metrics.
  type: boolean?
  inputBinding:
    prefix: --write-counts
- id: in_no_write_counts
  doc: Do not write advanced counts and metrics.
  type: boolean?
  inputBinding:
    prefix: --no-write-counts
- id: in_output_vtc
  doc: "Write VTC field in the final VCF which gives the\ncounts each position has\
    \ contributed to."
  type: boolean?
  inputBinding:
    prefix: --output-vtc
- id: in_preserve_info
  doc: "When using XCMP, preserve and merge the INFO fields in\ntruth and query. Useful\
    \ for ROC computation."
  type: boolean?
  inputBinding:
    prefix: --preserve-info
- id: in_roc
  doc: "Select a feature to produce a ROC on (INFO feature,\nQUAL, GQX, ...)."
  type: string?
  inputBinding:
    prefix: --roc
- id: in_no_roc
  doc: "Disable ROC computation and only output summary\nstatistics for more concise\
    \ output."
  type: boolean?
  inputBinding:
    prefix: --no-roc
- id: in_roc_regions
  doc: "Select a list of regions to compute ROCs in. By\ndefault, only the '*' region\
    \ will produce ROC output\n(aggregate variant counts)."
  type: string?
  inputBinding:
    prefix: --roc-regions
- id: in_roc_filter
  doc: Select a filter to ignore when making ROCs.
  type: string?
  inputBinding:
    prefix: --roc-filter
- id: in_roc_delta
  doc: Minimum spacing between ROC QQ levels.
  type: string?
  inputBinding:
    prefix: --roc-delta
- id: in_ci_alpha
  doc: "Confidence level for Jeffrey's CI for recall,\nprecision and fraction of non-assessed\
    \ calls."
  type: string?
  inputBinding:
    prefix: --ci-alpha
- id: in_no_json
  doc: Disable JSON file output.
  type: File?
  inputBinding:
    prefix: --no-json
- id: in_location
  doc: "Comma-separated list of locations [use naming after\npreprocessing], when\
    \ not specified will use whole VCF."
  type: string?
  inputBinding:
    prefix: --location
- id: in_pass_only
  doc: Keep only PASS variants.
  type: boolean?
  inputBinding:
    prefix: --pass-only
- id: in_filters_only
  doc: "Specify a comma-separated list of filters to apply (by\ndefault all filters\
    \ are ignored / passed on."
  type: string?
  inputBinding:
    prefix: --filters-only
- id: in_restrict_regions
  doc: "Restrict analysis to given (sparse) regions (using -R\nin bcftools)."
  type: File?
  inputBinding:
    prefix: --restrict-regions
- id: in_target_regions
  doc: "Restrict analysis to given (dense) regions (using -T\nin bcftools)."
  type: File?
  inputBinding:
    prefix: --target-regions
- id: in_left_shift
  doc: Left-shift variants safely.
  type: boolean?
  inputBinding:
    prefix: --leftshift
- id: in_no_left_shift
  doc: Do not left-shift variants safely.
  type: boolean?
  inputBinding:
    prefix: --no-leftshift
- id: in_decompose
  doc: "Decompose variants into primitives. This results in\nmore granular counts."
  type: boolean?
  inputBinding:
    prefix: --decompose
- id: in_no_decompose
  doc: Do not decompose variants into primitives.
  type: boolean?
  inputBinding:
    prefix: --no-decompose
- id: in_bcf_tools_norm
  doc: "Enable preprocessing through bcftools norm -c x -D\n(requires external preprocessing\
    \ to be switched on)."
  type: boolean?
  inputBinding:
    prefix: --bcftools-norm
- id: in_fix_chr
  doc: "Add chr prefix to VCF records where necessary\n(default: auto, attempt to\
    \ match reference)."
  type: boolean?
  inputBinding:
    prefix: --fixchr
- id: in_no_fix_chr
  doc: "Do not add chr prefix to VCF records (default: auto,\nattempt to match reference)."
  type: boolean?
  inputBinding:
    prefix: --no-fixchr
- id: in_bcf
  doc: "Use BCF internally. This is the default when the input\nfile is in BCF format\
    \ already. Using BCF can speed up\ntemp file access, but may fail for VCF files\
    \ that have\nbroken headers or records that don't comply with the\nheader."
  type: boolean?
  inputBinding:
    prefix: --bcf
- id: in_somatic
  doc: "Assume the input file is a somatic call file and\nsquash all columns into\
    \ one, putting all FORMATs into\nINFO + use half genotypes (see also --set-gt).\
    \ This\nwill replace all sample columns and replace them with\na single one."
  type: boolean?
  inputBinding:
    prefix: --somatic
- id: in_set_gt
  doc: "This is used to treat Strelka somatic files Possible\nvalues for this parameter:\
    \ half / hemi / het / hom /\nhalf to assign one of the following genotypes to\
    \ the\nresulting sample: 1 | 0/1 | 1/1 | ./1. This will\nreplace all sample columns\
    \ and replace them with a\nsingle one."
  type: string?
  inputBinding:
    prefix: --set-gt
- id: in_filter_non_ref
  doc: Remove any variants genotyped as <NON_REF>.
  type: boolean?
  inputBinding:
    prefix: --filter-nonref
- id: in_convert_gvc_f_to_vcf
  doc: "Convert the input set from genome VCF format to a VCF\nbefore processing."
  type: boolean?
  inputBinding:
    prefix: --convert-gvcf-to-vcf
- id: in_gender
  doc: "Specify sex. This determines how haploid calls on chrX\nget treated: for male\
    \ samples, all non-ref calls (in\nthe truthset only when running through hap.py)\
    \ are\ngiven a 1/1 genotype."
  type: string?
  inputBinding:
    prefix: --gender
- id: in_preprocess_truth
  doc: "Preprocess truth file with same settings as query\n(default is to accept truth\
    \ in original format)."
  type: boolean?
  inputBinding:
    prefix: --preprocess-truth
- id: in_use_filtered_truth
  doc: "Use filtered variant calls in truth file (by default,\nonly PASS calls in\
    \ the truth file are used)"
  type: boolean?
  inputBinding:
    prefix: --usefiltered-truth
- id: in_preprocessing_window_size
  doc: "Preprocessing window size (variants further apart than\nthat size are not\
    \ expected to interfere)."
  type: long?
  inputBinding:
    prefix: --preprocessing-window-size
- id: in_adjust_conf_regions
  doc: "Adjust confident regions to include variant locations.\nNote this will only\
    \ include variants that are included\nin the CONF regions already when viewing\
    \ with\nbcftools; this option only makes sure insertions are\npadded correctly\
    \ in the CONF regions (to capture\nthese, both the base before and after must\
    \ be\ncontained in the bed file)."
  type: boolean?
  inputBinding:
    prefix: --adjust-conf-regions
- id: in_no_adjust_conf_regions
  doc: Do not adjust confident regions for insertions.
  type: boolean?
  inputBinding:
    prefix: --no-adjust-conf-regions
- id: in_no_haplotype_comparison
  doc: "Disable haplotype comparison (only count direct GT\nmatches as TP)."
  type: boolean?
  inputBinding:
    prefix: --no-haplotype-comparison
- id: in_window_size
  doc: "Minimum distance between variants such that they fall\ninto the same superlocus."
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_x_cmp_enumeration_threshold
  doc: "Enumeration threshold / maximum number of sequences to\nenumerate per block."
  type: long?
  inputBinding:
    prefix: --xcmp-enumeration-threshold
- id: in_x_cmp_expand_hap_blocks
  doc: "Expand haplotype blocks by this many basepairs left\nand right."
  type: string?
  inputBinding:
    prefix: --xcmp-expand-hapblocks
- id: in_threads
  doc: Number of threads to use.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_engine
  doc: Comparison engine to use.
  type: string?
  inputBinding:
    prefix: --engine
- id: in_engine_vcf_eval_path
  doc: "This parameter should give the path to the \"rtg\"\nexecutable. The default\
    \ is rtg"
  type: File?
  inputBinding:
    prefix: --engine-vcfeval-path
- id: in_engine_vcf_eval_template
  doc: "Vcfeval needs the reference sequence formatted in its\nown file format (SDF\
    \ -- run rtg format -o ref.SDF\nref.fa). You can specify this here to save time\
    \ when\nrunning hap.py with vcfeval. If no SDF folder is\nspecified, hap.py will\
    \ create a temporary one."
  type: File?
  inputBinding:
    prefix: --engine-vcfeval-template
- id: in_scmp_distance
  doc: "For distance-based matching (vcfeval and scmp), this\nis the distance between\
    \ variants to use."
  type: string?
  inputBinding:
    prefix: --scmp-distance
- id: in_lose_match_distance
  doc: "For distance-based matching (vcfeval and scmp), this\nis the distance between\
    \ variants to use."
  type: string?
  inputBinding:
    prefix: --lose-match-distance
- id: in_log_file
  doc: Write logging information into file rather than to
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_quiet
  doc: Set logging level to output errors only.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_stderr
  doc: --verbose             Raise logging level from warning to info.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_report_prefix
  doc: Filename prefix for report output.
  type: File?
  outputBinding:
    glob: $(inputs.in_report_prefix)
- id: out_keep_scratch
  doc: Filename prefix for scratch report output.
  type: File?
  outputBinding:
    glob: $(inputs.in_keep_scratch)
- id: out_no_json
  doc: Disable JSON file output.
  type: File?
  outputBinding:
    glob: $(inputs.in_no_json)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- hap.py
