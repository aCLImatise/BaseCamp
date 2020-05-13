class: CommandLineTool
id: normalize_by_median.py.cwl
inputs:
- id: input_sequence_filename
  doc: Input FAST[AQ] sequence filename.
  type: string
  inputBinding:
    position: 0
- id: cut_off
  doc: 'when the median k-mer coverage level is above this number the read is not
    kept. (default: 20)'
  type: string
  inputBinding:
    prefix: --cutoff
- id: paired
  doc: 'require that all sequences be properly paired (default: False)'
  type: boolean
  inputBinding:
    prefix: --paired
- id: force_single
  doc: 'treat all sequences as single-ended/unpaired (default: False)'
  type: boolean
  inputBinding:
    prefix: --force_single
- id: unpaired_reads
  doc: 'include a file of unpaired reads to which -p/--paired does not apply. (default:
    None)'
  type: string
  inputBinding:
    prefix: --unpaired-reads
- id: save_graph
  doc: 'save the k-mer countgraph to disk after all reads are loaded. (default: None)'
  type: File
  inputBinding:
    prefix: --savegraph
- id: report
  doc: 'write progress report to report_filename (default: None)'
  type: string
  inputBinding:
    prefix: --report
- id: report_frequency
  doc: 'report progress every report_frequency reads (default: 100000)'
  type: string
  inputBinding:
    prefix: --report-frequency
- id: force
  doc: 'continue past file reading errors (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: output
  doc: 'only output a single file with the specified filename; use a single dash "-"
    to specify that output should go to STDOUT (the terminal) (default: None)'
  type: File
  inputBinding:
    prefix: --output
- id: load_graph
  doc: 'load a precomputed k-mer graph from disk (default: None)'
  type: File
  inputBinding:
    prefix: --loadgraph
- id: gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean
  inputBinding:
    prefix: --bzip
outputs: []
cwlVersion: v1.1
baseCommand:
- normalize-by-median.py
