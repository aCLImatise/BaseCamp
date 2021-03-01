class: CommandLineTool
id: falconc_m4filt_falconRunner.cwl
inputs:
- id: in_db_string_required
  doc: =, --db=               string  REQUIRED         set db
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_lasjsonfn_string_required
  doc: "=, --las-json-fn=      string  REQUIRED         List of las files from\nfalcon,\
    \ e.g../1-preads_ovl/\nlas-merge-combine/las_fofn.j\nson"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in__idtstage_float
  doc: "=, --idt-stage1=       float   90.0             Stage one percent identity\n\
    filter, formatted as\npercentage, overlaps < %idt\nare skipped"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_idt_stage_two
  doc: =            float   90.0             Stage two percent identify
  type: boolean?
  inputBinding:
    prefix: --idt-stage2
- id: in_max_cov
  doc: "=               int     200              Maximum number of overlaps\non either\
    \ side of a read"
  type: boolean?
  inputBinding:
    prefix: --max-cov
- id: in_max_diff
  doc: "=              int     100              Reads are skipped is\nabs(5p-3p) overlap\
    \ counts >\nmaxDiff"
  type: boolean?
  inputBinding:
    prefix: --max-diff
- id: in__bestn_int
  doc: "=, --bestn=            int     10               Keep N best overlaps at\n\
    5prime AND 3prime of a read"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_min_depth
  doc: "=             int     2                Depths lower than minDepth\nare considered\
    \ gaps"
  type: boolean?
  inputBinding:
    prefix: --min-depth
- id: in_min_overhang
  doc: =           int     0                set minOverhang
  type: boolean?
  inputBinding:
    prefix: --minOverhang
- id: in_gap_filt
  doc: "bool    false            Run depth filter, takes a\nlittle more time"
  type: boolean?
  inputBinding:
    prefix: --gap-filt
- id: in_keep_intermediates
  doc: bool    false            set keepIntermediates
  type: boolean?
  inputBinding:
    prefix: --keepIntermediates
- id: in__nproc_int
  doc: =, --n-proc=           int     24               Number of processes to run
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_debug_log_fn
  doc: =          string  "LA4Falcon.log"  Write stderr to this file
  type: boolean?
  inputBinding:
    prefix: --debug-log-fn
- id: in__outfn_string
  doc: =, --out-fn=           string  REQUIRED         Final m4 overlap file
  type: File?
  inputBinding:
    prefix: -o
- id: in_help
  doc: '--help-syntax                                     advanced: prepend,plurals,..'
  type: string
  inputBinding:
    position: 0
- id: in_filter
  doc: -m=, --min-len=          int     6000             Minimum read length, reads
  type: string
  inputBinding:
    position: 1
- id: in_discarded
  doc: --min-cov=               int     2                Minimum number of overlaps
  type: string
  inputBinding:
    position: 0
- id: in_locally
  doc: -f=, --filter-log-fn=    string  REQUIRED         Write read filter stats to
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outfn_string
  doc: =, --out-fn=           string  REQUIRED         Final m4 overlap file
  type: File?
  outputBinding:
    glob: $(inputs.in__outfn_string)
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-falconRunner
