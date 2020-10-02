class: CommandLineTool
id: lofreq_filter.cwl
inputs:
- id: in__file_vcf_input
  doc: '| --in FILE                 VCF input file (no streaming supported; gzip supported)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__file_vcf_output
  doc: '| --out FILE                VCF output file (default: - for stdout; gzip supported).'
  type: File
  inputBinding:
    prefix: -o
- id: in__covmin_coverage
  doc: '| --cov-min INT             Minimum coverage allowed (<1=off)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in__covmax_int
  doc: '| --cov-max INT             Maximum coverage allowed (<1=off)'
  type: boolean
  inputBinding:
    prefix: -V
- id: in__afmin_float
  doc: '| --af-min FLOAT            Minimum allele freq allowed (<1=off)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in__afmax_float
  doc: '| --af-max FLOAT            Maximum allele freq allowed (<1=off)'
  type: boolean
  inputBinding:
    prefix: -A
- id: in__sbthresh_int
  doc: '| --sb-thresh INT           Maximum phred-value allowed. Conflicts with -b.'
  type: boolean
  inputBinding:
    prefix: -B
- id: in__sbmtc_string
  doc: "| --sb-mtc STRING           Multiple testing correction type. One of 'bonf',\
    \ 'holm' or 'fdr'. Conflicts with -B"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__sbalpha_float
  doc: '| --sb-alpha FLOAT          Multiple testing correction pvalue threshold'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_sb_no_compound
  doc: Don't use compound filter
  type: boolean
  inputBinding:
    prefix: --sb-no-compound
- id: in_sb_incl_indels
  doc: Apply SB filter to indels as well
  type: boolean
  inputBinding:
    prefix: --sb-incl-indels
- id: in__snvqualthresh_int
  doc: '| --snvqual-thresh INT      Minimum phred-value allowed. Conflicts with -q'
  type: boolean
  inputBinding:
    prefix: -Q
- id: in__snvqualmtc_string
  doc: "| --snvqual-mtc STRING      Multiple testing correction type. One of 'bonf',\
    \ 'holm' or 'fdr'. Conflicts with -Q"
  type: boolean
  inputBinding:
    prefix: -q
- id: in__snvqualalpha_float
  doc: '| --snvqual-alpha FLOAT     Multiple testing correction pvalue threshold'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__snvqualntests_int
  doc: '| --snvqual-ntests INT      Number of performed SNV tests for multiple testing
    correction'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__indelqualthresh_int
  doc: '| --indelqual-thresh INT    Minimum phred-value allowed. Conflicts with -q'
  type: boolean
  inputBinding:
    prefix: -K
- id: in__indelqualmtc_string
  doc: "| --indelqual-mtc STRING    Multiple testing correction type. One of 'bonf',\
    \ 'holm' or 'fdr'. Conflicts with -Q"
  type: boolean
  inputBinding:
    prefix: -k
- id: in__indelqualalpha_float
  doc: '| --indelqual-alpha FLOAT   Multiple testing correction pvalue threshold'
  type: boolean
  inputBinding:
    prefix: -l
- id: in__indelqualntests_int
  doc: '| --indelqual-ntests INT    Number of performed indel tests for multiple testing
    correction'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_only_indels
  doc: Keep InDels only
  type: boolean
  inputBinding:
    prefix: --only-indels
- id: in_only_sn_vs
  doc: Keep SNVs only
  type: boolean
  inputBinding:
    prefix: --only-snvs
- id: in_print_all
  doc: Print all, not just passed variants
  type: boolean
  inputBinding:
    prefix: --print-all
- id: in_no_defaults
  doc: Remove all default filter settings
  type: boolean
  inputBinding:
    prefix: --no-defaults
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Enable debugging
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__file_vcf_output
  doc: '| --out FILE                VCF output file (default: - for stdout; gzip supported).'
  type: File
  outputBinding:
    glob: $(inputs.in__file_vcf_output)
cwlVersion: v1.1
baseCommand:
- lofreq
- filter
