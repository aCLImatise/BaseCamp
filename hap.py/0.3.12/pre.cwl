class: CommandLineTool
id: pre.py.cwl
inputs:
- id: input
  doc: VCF file to process.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output filename.
  type: string
  inputBinding:
    position: 1
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
- id: reference
  doc: Specify a reference file.
  type: string
  inputBinding:
    prefix: --reference
- id: window_size
  doc: Preprocessing window size (variants further apart than that size are not expected
    to interfere).
  type: string
  inputBinding:
    prefix: --window-size
- id: threads
  doc: Number of threads to use.
  type: string
  inputBinding:
    prefix: --threads
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
- pre.py
