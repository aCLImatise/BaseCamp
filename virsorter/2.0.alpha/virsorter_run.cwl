class: CommandLineTool
id: ../../../virsorter_run.cwl
inputs:
- id: working_dir
  doc: output directory
  type: File
  inputBinding:
    prefix: --working-dir
- id: db_dir
  doc: database directory, default to the --db-dir set during installation
  type: File
  inputBinding:
    prefix: --db-dir
- id: seq_file
  doc: sequence file in fa or fq format (could be compressed by gzip or bz2)  [required]
  type: File
  inputBinding:
    prefix: --seqfile
- id: include_groups
  doc: 'classifiers of viral groups to included (comma separated and no space in between)  [default:
    dsDNAphage,NCLDV,RNA,ssDNA,lavidaviridae]'
  type: string
  inputBinding:
    prefix: --include-groups
- id: jobs
  doc: 'max # of jobs allowed in parallel.  [default: 8]'
  type: long
  inputBinding:
    prefix: --jobs
- id: min_score
  doc: 'minimal score to be identified as viral [default: 0.5]'
  type: double
  inputBinding:
    prefix: --min-score
- id: hallmark_required_on_short
  doc: 'require hallmark gene short seqs (length cutoff as "short" were set in template-
    config.yaml file); this can reduce false positives at reasonable cost of sensitivity
    [default: False]'
  type: boolean
  inputBinding:
    prefix: --hallmark-required-on-short
- id: provirus_off
  doc: 'To turn off extracting provirus after classifying full contig seqs; Togetehr
    with lower --max-orf-per-seq, can speed up a run significantly  [default: False]'
  type: boolean
  inputBinding:
    prefix: --provirus-off
- id: max_orf_per_seq
  doc: 'Max # of orf used for computing taxonomic features; if # of orf in a seq exceeds
    the max limit, it is sub-sampled to this # to reduce computation; to turn off
    this, set it to -1; this option must be used together with --provirus-off option  [default:
    20]'
  type: long
  inputBinding:
    prefix: --max-orf-per-seq
- id: min_length
  doc: 'minimal seq length required; all seqs shorter than this will be removed  [default:
    0]'
  type: long
  inputBinding:
    prefix: --min-length
- id: tmpdir
  doc: Directory name for intermediate files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: verbose
  doc: 'shows detailed rules output  [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: profile
  doc: snakemake profile e.g. for cluster execution.
  type: string
  inputBinding:
    prefix: --profile
- id: dry_run
  doc: 'Check rules to run and files to produce [default: False]'
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: use_cond_a_off
  doc: 'Stop using the conda envs (vs2.yaml) that come with this package and use what
    are installed in current system; Only useful when you want to install dependencies
    on your own with your own prefer versions  [default: False]'
  type: boolean
  inputBinding:
    prefix: --use-conda-off
- id: all_vertical_line_classify
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: snake_make_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- virsorter
- run
