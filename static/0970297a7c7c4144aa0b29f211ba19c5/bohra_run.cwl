class: CommandLineTool
id: bohra_run.cwl
inputs:
- id: input_file
  doc: 'Input file = tab-delimited with 3 columns <isolatename> <path_to_read1> <path_to_read2>
    (default: )'
  type: string
  inputBinding:
    prefix: --input_file
- id: job_id
  doc: 'Job ID, will be the name of the output directory (default: )'
  type: string
  inputBinding:
    prefix: --job_id
- id: reference
  doc: 'Path to reference (.gbk or .fa) (default: )'
  type: string
  inputBinding:
    prefix: --reference
- id: mask
  doc: 'Path to mask file if used (.bed) (default: False)'
  type: string
  inputBinding:
    prefix: --mask
- id: kraken_db
  doc: 'Path to DB for use with kraken2, if no DB present speciation will not be performed.
    [env var: KRAKEN2_DEFAULT_DB] (default: None)'
  type: string
  inputBinding:
    prefix: --kraken_db
- id: pipeline
  doc: "The pipeline to run. Preview (--preview - default) will calculate mash-distances\
    \ and a mash-tree for quick inspection of your dataset. SNPs and ASSEMBLIES ('sa')\
    \ will perform SNPs and ASSEMBLIES. ALL ('all') will perform SNPS, ASSEMBLIES\
    \ and ROARY for pan-genome analysis (default: preview)"
  type: string
  inputBinding:
    prefix: --pipeline
- id: assembler
  doc: 'Assembler to use. (default: shovill)'
  type: string
  inputBinding:
    prefix: --assembler
- id: cpus
  doc: 'Number of CPU cores to run, will define how many rules are run at a time (default:
    16)'
  type: string
  inputBinding:
    prefix: --cpus
- id: minal_n
  doc: 'Minimum percent alignment. Isolates which do not align to reference at this
    threshold will not be included in core phylogeny. (default: 80)'
  type: long
  inputBinding:
    prefix: --minaln
- id: min_cov
  doc: 'Minimum percent alignment. Isolates which do not have average read coverage
    above this threshold will not be included further analysis. (default: 40)'
  type: long
  inputBinding:
    prefix: --mincov
- id: prefill_path
  doc: 'Path to existing assemblies - in the form path_to_somewhere/isolatename/contigs.fa
    (default: None)'
  type: string
  inputBinding:
    prefix: --prefillpath
- id: mdu
  doc: 'If running on MDU data (default: False)'
  type: boolean
  inputBinding:
    prefix: -mdu
- id: workdir
  doc: 'The directory where Bohra will be run, default is current directory (default:
    /tmp/tmpwhu0e7qn)'
  type: string
  inputBinding:
    prefix: -workdir
- id: resources
  doc: 'Directory where templates are stored (default: /tmp/tmpwhu0e7qn/lib/python3.7/site-
    packages/bohra/templates)'
  type: string
  inputBinding:
    prefix: -resources
- id: force
  doc: 'Add if you would like to force a complete restart of the pipeline. All previous
    logs will be lost. (default: False)'
  type: boolean
  inputBinding:
    prefix: -force
- id: dry_run
  doc: 'If you would like to see a dry run of commands to be executed. (default: False)'
  type: boolean
  inputBinding:
    prefix: -dry-run
- id: cluster
  doc: 'If you are running Bohra on a cluster. (default: False)'
  type: boolean
  inputBinding:
    prefix: --cluster
- id: json
  doc: 'Path to cluster.json - required if --cluster is set (default: )'
  type: string
  inputBinding:
    prefix: --json
- id: queue
  doc: 'Type of queue (sbatch or qsub currently supported) - required if --cluster
    is set. (default: )'
  type: string
  inputBinding:
    prefix: --queue
- id: gubbins
  doc: 'Set to use gubbins for recombination correction. (default: False)'
  type: boolean
  inputBinding:
    prefix: --gubbins
- id: keep
  doc: "If you are rerunning bohra over an exisiting directory set --keep to 'Y' to\
    \ archive report files - otherwise previous reprot files will be removed. (default:\
    \ N)"
  type: string
  inputBinding:
    prefix: --keep
outputs: []
cwlVersion: v1.1
baseCommand:
- bohra
- run
