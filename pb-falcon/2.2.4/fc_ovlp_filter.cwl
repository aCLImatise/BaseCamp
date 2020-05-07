class: CommandLineTool
id: fc_ovlp_filter.cwl
inputs:
- id: out_fn
  doc: 'Output filename (default: preads.m4)'
  type: string
  inputBinding:
    prefix: --out-fn
- id: n_core
  doc: 'number of processes used for generating consensus; 0 for main process only
    (default: 4)'
  type: string
  inputBinding:
    prefix: --n-core
- id: las_fof_n
  doc: 'file contains the paths of all LAS files to be processed in parallel (default:
    None)'
  type: string
  inputBinding:
    prefix: --las-fofn
- id: db
  doc: 'read db file path (default: None)'
  type: string
  inputBinding:
    prefix: --db
- id: max_diff
  doc: "max difference of 5' and 3' coverage (default: None)"
  type: long
  inputBinding:
    prefix: --max-diff
- id: max_cov
  doc: "max coverage of 5' or 3' end (default: None)"
  type: long
  inputBinding:
    prefix: --max-cov
- id: min_cov
  doc: "min coverage of 5' or 3' end (default: None)"
  type: long
  inputBinding:
    prefix: --min-cov
- id: min_len
  doc: 'min length of the reads (default: 2500)'
  type: long
  inputBinding:
    prefix: --min-len
- id: min_idt
  doc: 'minimum alignment identity to consider an overlap (default: 90.0)'
  type: long
  inputBinding:
    prefix: --min-idt
- id: ignore_indels
  doc: 'ignore indels in calculating alignment identity (-I to LA4Falcon) (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ignore-indels
- id: best_n
  doc: "output at least best n overlaps on 5' or 3' ends if possible (default: 10)"
  type: string
  inputBinding:
    prefix: --bestn
- id: stream
  doc: 'stream from LA4Falcon, instead of slurping all at once; can save memory for
    large data (default: False)'
  type: boolean
  inputBinding:
    prefix: --stream
- id: debug
  doc: 'single-threaded, plus other aids to debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: silent
  doc: 'suppress cmd reporting on stderr (default: False)'
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_filter
