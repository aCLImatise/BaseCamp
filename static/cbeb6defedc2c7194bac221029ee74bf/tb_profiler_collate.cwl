class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tb_profiler_collate.cwl
inputs:
- id: prefix
  doc: 'Sample prefix (default: tbprofiler)'
  type: string
  inputBinding:
    prefix: --prefix
- id: samples
  doc: 'File with samples (one per line) (default: None)'
  type: string
  inputBinding:
    prefix: --samples
- id: dir
  doc: 'Storage directory (default: results)'
  type: string
  inputBinding:
    prefix: --dir
- id: full
  doc: 'Output mutations in main result file (default: False)'
  type: boolean
  inputBinding:
    prefix: --full
- id: all_variants
  doc: 'Output all variants in variant matrix (default: False)'
  type: boolean
  inputBinding:
    prefix: --all_variants
- id: mark_missing
  doc: 'An asteriks will be use to mark predictions which are affected by missing
    data at a drug resistance position (default: False)'
  type: boolean
  inputBinding:
    prefix: --mark_missing
- id: reporting_af
  doc: 'Minimum allele frequency to call variants (default: 0.1)'
  type: string
  inputBinding:
    prefix: --reporting_af
- id: db
  doc: 'Full path to mutation database json file to use (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: external_db
  doc: 'Path to db files prefix (overrides "--db" parameter) (default: None)'
  type: string
  inputBinding:
    prefix: --external_db
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- collate
