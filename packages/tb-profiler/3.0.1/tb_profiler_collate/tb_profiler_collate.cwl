class: CommandLineTool
id: tb_profiler_collate.cwl
inputs:
- id: in_prefix
  doc: 'Sample prefix (default: tbprofiler)'
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_samples
  doc: 'File with samples (one per line) (default: None)'
  type: File?
  inputBinding:
    prefix: --samples
- id: in_dir
  doc: 'Storage directory (default: results)'
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_full
  doc: 'Output mutations in main result file (default: False)'
  type: File?
  inputBinding:
    prefix: --full
- id: in_all_variants
  doc: 'Output all variants in variant matrix (default: False)'
  type: boolean?
  inputBinding:
    prefix: --all_variants
- id: in_mark_missing
  doc: "An asteriks will be use to mark predictions which are\naffected by missing\
    \ data at a drug resistance position\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --mark_missing
- id: in_reporting_af
  doc: "Minimum allele frequency to call variants (default:\n0.1)"
  type: double?
  inputBinding:
    prefix: --reporting_af
- id: in_db
  doc: "Full path to mutation database json file to use\n(default: tbdb)"
  type: File?
  inputBinding:
    prefix: --db
- id: in_external_db
  doc: "Path to db files prefix (overrides \"--db\" parameter)\n(default: None)"
  type: File?
  inputBinding:
    prefix: --external_db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_full
  doc: 'Output mutations in main result file (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_full)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:3.0.1--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tb-profiler
- collate
