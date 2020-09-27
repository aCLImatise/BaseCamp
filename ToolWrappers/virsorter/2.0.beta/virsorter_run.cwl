class: CommandLineTool
id: virsorter_run.cwl
inputs:
- id: in_working_dir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --working-dir
- id: in_db_dir
  doc: "database directory, default to the --db-dir\nset during installation"
  type: File
  inputBinding:
    prefix: --db-dir
- id: in_seq_file
  doc: "sequence file in fa or fq format (could be\ncompressed by gzip or bz2)  [required]"
  type: File
  inputBinding:
    prefix: --seqfile
- id: in_include_groups
  doc: "classifiers of viral groups to included (comma\nseparated and no space in\
    \ between)  [default:\ndsDNAphage,NCLDV,RNA,ssDNA,lavidaviridae]"
  type: string
  inputBinding:
    prefix: --include-groups
- id: in_jobs
  doc: "max # of jobs allowed in parallel.  [default:\n8]"
  type: long
  inputBinding:
    prefix: --jobs
- id: in_min_score
  doc: "minimal score to be identified as viral\n[default: 0.5]"
  type: double
  inputBinding:
    prefix: --min-score
- id: in_hallmark_required_on_short
  doc: "require hallmark gene short seqs (length\ncutoff as \"short\" were set in\
    \ template-\nconfig.yaml file); this can reduce false\npositives at reasonable\
    \ cost of sensitivity\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --hallmark-required-on-short
- id: in_provirus_off
  doc: "To turn off extracting provirus after\nclassifying full contig seqs; Togetehr\
    \ with\nlower --max-orf-per-seq, can speed up a run\nsignificantly  [default:\
    \ False]"
  type: boolean
  inputBinding:
    prefix: --provirus-off
- id: in_max_orf_per_seq
  doc: "Max # of orf used for computing taxonomic\nfeatures; if # of orf in a seq\
    \ exceeds the max\nlimit, it is sub-sampled to this # to reduce\ncomputation;\
    \ to turn off this, set it to -1;\nthis option must be used together with\n--provirus-off\
    \ option  [default: 20]"
  type: long
  inputBinding:
    prefix: --max-orf-per-seq
- id: in_min_length
  doc: "minimal seq length required; all seqs shorter\nthan this will be removed \
    \ [default: 0]"
  type: long
  inputBinding:
    prefix: --min-length
- id: in_tmpdir
  doc: Directory name for intermediate files
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: 'shows detailed rules output  [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_profile
  doc: snakemake profile e.g. for cluster execution.
  type: string
  inputBinding:
    prefix: --profile
- id: in_dry_run
  doc: "Check rules to run and files to produce\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: in_use_cond_a_off
  doc: "Stop using the conda envs (vs2.yaml) that come\nwith this package and use\
    \ what are installed\nin current system; Only useful when you want\nto install\
    \ dependencies on your own with your\nown prefer versions  [default: False]"
  type: boolean
  inputBinding:
    prefix: --use-conda-off
- id: in_rm_tmpdir
  doc: "Remove intermediate file directory (--tmpdir)\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --rm-tmpdir
- id: in_all_vertical_line_classify
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_snake_make_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_working_dir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_working_dir)
cwlVersion: v1.1
baseCommand:
- virsorter
- run
