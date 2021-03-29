class: CommandLineTool
id: pre.py.cwl
inputs:
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
- id: in_reference
  doc: Specify a reference file.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_window_size
  doc: "Preprocessing window size (variants further apart than\nthat size are not\
    \ expected to interfere)."
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_threads
  doc: Number of threads to use.
  type: long?
  inputBinding:
    prefix: --threads
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
- id: in_input
  doc: VCF file to process.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output filename.
  type: string
  inputBinding:
    position: 1
- id: in_stderr
  doc: --verbose             Raise logging level from warning to info.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- pre.py
