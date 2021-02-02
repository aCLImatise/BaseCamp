class: CommandLineTool
id: falconc_m4filt_ipaRunner.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__ovlsfofnfn_string
  doc: =, --ovls-fofn-fn=     string  REQUIRED  List of m4 files from ipa/raptor
  type: boolean
  inputBinding:
    prefix: -o
- id: in__idtstage_float
  doc: "=, --idt-stage1=       float   90.0      Stage one percent identity filter,\n\
    formatted as percentage, overlaps <\n%idt are skipped"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_idt_stage_two
  doc: =            float   90.0      Stage two percent identify filter
  type: boolean
  inputBinding:
    prefix: --idt-stage2
- id: in__minlen_int
  doc: "=, --min-len=          int     6000      Minimum read length, reads shorter\n\
    than minLen will be discarded"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_min_cov
  doc: "=               int     2         Minimum number of overlaps on\neither side\
    \ of a read"
  type: boolean
  inputBinding:
    prefix: --min-cov
- id: in_max_cov
  doc: "=               int     200       Maximum number of overlaps on\neither side\
    \ of a read"
  type: boolean
  inputBinding:
    prefix: --max-cov
- id: in_max_diff
  doc: "=              int     100       Reads are skipped is abs(5p-3p)\noverlap\
    \ counts > maxDiff"
  type: boolean
  inputBinding:
    prefix: --max-diff
- id: in__bestn_int
  doc: "=, --bestn=            int     10        Keep N best overlaps at 5prime AND\n\
    3prime of a read"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_min_overhang
  doc: =           int     0         set minOverhang
  type: boolean
  inputBinding:
    prefix: --minOverhang
- id: in_min_depth
  doc: "=             int     2         Depths lower than minDepth are\nconsidered\
    \ gaps"
  type: boolean
  inputBinding:
    prefix: --min-depth
- id: in_gap_filt
  doc: "bool    false     Run depth filter, takes a little\nmore time"
  type: boolean
  inputBinding:
    prefix: --gap-filt
- id: in_keep_intermediates
  doc: bool    false     set keepIntermediates
  type: boolean
  inputBinding:
    prefix: --keepIntermediates
- id: in__nproc_int
  doc: =, --n-proc=           int     24        Number of processes to run locally
  type: boolean
  inputBinding:
    prefix: -n
- id: in__filterlogfn_string
  doc: =, --filter-log-fn=    string  REQUIRED  Write read filter stats to this
  type: boolean
  inputBinding:
    prefix: -f
- id: in_file
  doc: --outputFn=              string  REQUIRED  Final m4 overlap file
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-ipaRunner
