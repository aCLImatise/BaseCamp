class: CommandLineTool
id: hlama.cwl
inputs:
- id: in_tumor_normal
  doc: "Path to tumor/normal TSV file, starts tumor/normal\nmode"
  type: File
  inputBinding:
    prefix: --tumor-normal
- id: in_pedigree
  doc: Path to pedigree file, starts pedigree mode
  type: File
  inputBinding:
    prefix: --pedigree
- id: in_config
  doc: "Optional explicit path to configuration file, by\ndefault ~/.hlama.cfg is\
    \ searched for"
  type: File
  inputBinding:
    prefix: --config
- id: in_work_dir
  doc: Directory to create the Snakefile in
  type: Directory
  inputBinding:
    prefix: --work-dir
- id: in_reads_base_dir
  doc: "Base directory for reads, give multiple times for\nmultiple places to search"
  type: Directory
  inputBinding:
    prefix: --reads-base-dir
- id: in_dont_run_snake_make
  doc: Only create Snakefile but do not run Snakemake yet
  type: boolean
  inputBinding:
    prefix: --dont-run-snakemake
- id: in_disable_checks
  doc: Disable input checks
  type: boolean
  inputBinding:
    prefix: --disable-checks
- id: in_num_threads
  doc: "Number of threads to use for read mapping, defaults to\n1\n"
  type: long
  inputBinding:
    prefix: --num-threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hlama
