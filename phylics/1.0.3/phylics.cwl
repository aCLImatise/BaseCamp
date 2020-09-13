class: CommandLineTool
id: ../../../phylics.cwl
inputs:
- id: in_output_path
  doc: ''
  type: long
  inputBinding:
    prefix: --output_path
- id: in_run
  doc: 'Run the pipeline. USAGE: phylics --run [--run_cnvs |'
  type: boolean
  inputBinding:
    prefix: --run
- id: in_run_single
  doc: '| --run_multiple] --input_dirs'
  type: boolean
  inputBinding:
    prefix: --run_single
- id: in_values
  doc: '[v [v ...]] --output_path out_path'
  type: boolean
  inputBinding:
    prefix: --values
- id: in_run_cn_vs
  doc: 'Run only the CNV calling stage. USAGE: phylics --run'
  type: boolean
  inputBinding:
    prefix: --run_cnvs
- id: in_input_dirs
  doc: ''
  type: string[]
  inputBinding:
    prefix: --input_dirs
- id: in_binning
  doc: ''
  type: long
  inputBinding:
    prefix: --binning
- id: in_run_multiple
  doc: "Run only the multiple-sample analysis stage. USAGE:\nphylics --run --run_multiple\
    \ --input_dirs\nsample:input_dir [sample:input_dir ...] --output_path\nout_path\
    \ [--output_prefix out_prefix] [--verbose]"
  type: boolean
  inputBinding:
    prefix: --run_multiple
- id: in_method
  doc: Clustering method (default = complete)
  type: string
  inputBinding:
    prefix: --method
- id: in_metric
  doc: Distance metric
  type: string
  inputBinding:
    prefix: --metric
- id: in_output_prefix
  doc: "A string to be pre-pended to the names automatically\ngenerated for the output\
    \ directories"
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_tasks
  doc: "Maximum number of tasks to be run in parallel. It\nallows to execute single-sample\
    \ analyses in parallel\nand to parallelize the permutation test execution for\n\
    the heterogeneity score computation."
  type: long
  inputBinding:
    prefix: --tasks
- id: in_seed
  doc: "Seed to initialize the pseudo-random generator used to\nperform the permutation\
    \ test."
  type: string
  inputBinding:
    prefix: --seed
- id: in_n_permutations
  doc: "Number of permutations to execute the permutation test\nfor the heterogeneity\
    \ score computation."
  type: long
  inputBinding:
    prefix: --n_permutations
- id: in_rec_lust
  doc: "If this option is specified, only the clustering part\nis executed with the\
    \ specified number of clusters (see\n--n_clusters option), unless --reinit option\
    \ is\nspecified (see below)."
  type: long
  inputBinding:
    prefix: --reclust
- id: in_reinit
  doc: This option has effect only if combined with the
  type: boolean
  inputBinding:
    prefix: --reinit
- id: in_intervals
  doc: "List of of mean ploidy intervals: cells which mean\nploidies are in the specified\
    \ ranges are filtered out"
  type: long[]
  inputBinding:
    prefix: --intervals
- id: in_verbose
  doc: Verbose execution.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phylics
