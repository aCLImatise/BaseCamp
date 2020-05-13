class: CommandLineTool
id: hlama.cwl
inputs:
- id: tumor_normal
  doc: Path to tumor/normal TSV file, starts tumor/normal mode
  type: string
  inputBinding:
    prefix: --tumor-normal
- id: pedigree
  doc: Path to pedigree file, starts pedigree mode
  type: string
  inputBinding:
    prefix: --pedigree
- id: config
  doc: Optional explicit path to configuration file, by default ~/.hlama.cfg is searched
    for
  type: string
  inputBinding:
    prefix: --config
- id: work_dir
  doc: Directory to create the Snakefile in
  type: string
  inputBinding:
    prefix: --work-dir
- id: reads_base_dir
  doc: Base directory for reads, give multiple times for multiple places to search
  type: string
  inputBinding:
    prefix: --reads-base-dir
- id: dont_run_snake_make
  doc: Only create Snakefile but do not run Snakemake yet
  type: boolean
  inputBinding:
    prefix: --dont-run-snakemake
- id: disable_checks
  doc: Disable input checks
  type: boolean
  inputBinding:
    prefix: --disable-checks
- id: num_threads
  doc: Number of threads to use for read mapping, defaults to 1
  type: string
  inputBinding:
    prefix: --num-threads
outputs: []
cwlVersion: v1.1
baseCommand:
- hlama
