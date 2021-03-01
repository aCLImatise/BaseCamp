class: CommandLineTool
id: virsorter_run.cwl
inputs:
- id: in_hallmark_required_on_short
  doc: ). Most snakemake arguments can be
  type: boolean?
  inputBinding:
    prefix: --hallmark-required-on-short
- id: in_working_dir
  doc: output directory
  type: Directory?
  inputBinding:
    prefix: --working-dir
- id: in_db_dir
  doc: "database directory, default to the --db-dir\nset during installation"
  type: File?
  inputBinding:
    prefix: --db-dir
- id: in_seq_file
  doc: "sequence file in fa or fq format (could be\ncompressed by gzip or bz2)  [required]"
  type: File?
  inputBinding:
    prefix: --seqfile
- id: in_label
  doc: "add label as prefix to output files; this is\nuseful when re-running classify\
    \ with different\nfiltering options"
  type: string?
  inputBinding:
    prefix: --label
- id: in_include_groups
  doc: "classifiers of viral groups to included (comma\nseparated and no space in\
    \ between); available\noptions are:\ndsDNAphage,NCLDV,RNA,ssDNA,lavidaviridae\n\
    [default:\ndsDNAphage,NCLDV,RNA,ssDNA,lavidaviridae]"
  type: string?
  inputBinding:
    prefix: --include-groups
- id: in_jobs
  doc: "max # of jobs allowed in parallel.  [default:\n8]"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_min_score
  doc: "minimal score to be identified as viral\n[default: 0.5]"
  type: double?
  inputBinding:
    prefix: --min-score
- id: in_min_length
  doc: "minimal seq length required; all seqs shorter\nthan this will be removed \
    \ [default: 0]"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_keep_original_seq
  doc: "keep the original sequences instead of\ntrimmed; By default, the untranslated\
    \ regions\nat both ends of identified viral seqs are\ntrimmed; circular sequences\
    \ are modified to\nremove overlap between both ends and adjusted\nfor the gene\
    \ splitted into two ends;\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --keep-original-seq
- id: in_prep_for_dram_v
  doc: "turn on generating viral seqfile and viral-\naffi-contigs.tab for DRAMv  [default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --prep-for-dramv
- id: in_provirus_off
  doc: "turn off extracting provirus after classifying\nfull contigs; Togetehr with\
    \ lower --max-orf-\nper-seq, can speed up a run significantly\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --provirus-off
- id: in_max_orf_per_seq
  doc: "max # of orf used for computing taxonomic\nfeature; this option can only be\
    \ used in\n--provirus-off mode; if # of orf in a seq\nexceeds the max limit, it\
    \ is sub-sampled to\nthis # to reduce computation  [default: -1]"
  type: long?
  inputBinding:
    prefix: --max-orf-per-seq
- id: in_tmpdir
  doc: directory name for intermediate files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_rm_tmpdir
  doc: "remove intermediate file directory (--tmpdir);\nMore than 100 intermediate\
    \ files are created\nfor each run, so this is recommended when 100s\nof samples\
    \ are processed to avoid exceeding\nfile # quota for user  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --rm-tmpdir
- id: in_verbose
  doc: 'shows detailed rules output  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_profile
  doc: snakemake profile e.g. for cluster execution.
  type: string?
  inputBinding:
    prefix: --profile
- id: in_dry_run
  doc: "Check rules to run and files to produce\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --dryrun
- id: in_use_cond_a_off
  doc: "Stop using the conda envs (vs2.yaml) that come\nwith this package and use\
    \ what are installed\nin current system; Only useful when you want\nto install\
    \ dependencies on your own with your\nown prefer versions  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --use-conda-off
- id: in_all_vertical_line_classify
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_snake_make_args
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_working_dir
  doc: output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_working_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/virsorter:2.1--py_0
cwlVersion: v1.1
baseCommand:
- virsorter
- run
