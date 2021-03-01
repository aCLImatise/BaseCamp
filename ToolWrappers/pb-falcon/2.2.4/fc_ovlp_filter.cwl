class: CommandLineTool
id: fc_ovlp_filter.cwl
inputs:
- id: in_out_fn
  doc: 'Output filename (default: preads.m4)'
  type: File?
  inputBinding:
    prefix: --out-fn
- id: in_n_core
  doc: 'number of processes used for generating consensus; 0 for main process only
    (default: 4)'
  type: long?
  inputBinding:
    prefix: --n-core
- id: in_las_fof_n
  doc: 'file contains the paths of all LAS files to be processed in parallel (default:
    None)'
  type: File?
  inputBinding:
    prefix: --las-fofn
- id: in_db
  doc: 'read db file path (default: None)'
  type: File?
  inputBinding:
    prefix: --db
- id: in_max_diff
  doc: "max difference of 5' and 3' coverage (default: None)"
  type: long?
  inputBinding:
    prefix: --max-diff
- id: in_max_cov
  doc: "max coverage of 5' or 3' end (default: None)"
  type: long?
  inputBinding:
    prefix: --max-cov
- id: in_min_cov
  doc: "min coverage of 5' or 3' end (default: None)"
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_min_len
  doc: 'min length of the reads (default: 2500)'
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_min_idt
  doc: 'minimum alignment identity to consider an overlap (default: 90.0)'
  type: long?
  inputBinding:
    prefix: --min-idt
- id: in_ignore_indels
  doc: 'ignore indels in calculating alignment identity (-I to LA4Falcon) (default:
    False)'
  type: boolean?
  inputBinding:
    prefix: --ignore-indels
- id: in_best_n
  doc: "output at least best n overlaps on 5' or 3' ends if possible (default: 10)"
  type: long?
  inputBinding:
    prefix: --bestn
- id: in_stream
  doc: 'stream from LA4Falcon, instead of slurping all at once; can save memory for
    large data (default: False)'
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: 'single-threaded, plus other aids to debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: 'suppress cmd reporting on stderr (default: False)'
  type: boolean?
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_fn
  doc: 'Output filename (default: preads.m4)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_fn)
hints: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_filter
