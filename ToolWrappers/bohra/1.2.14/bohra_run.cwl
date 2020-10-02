class: CommandLineTool
id: bohra_run.cwl
inputs:
- id: in_input_file
  doc: "Input file = tab-delimited with 3 columns\n<isolatename> <path_to_read1> <path_to_read2>\n\
    (default: )"
  type: File
  inputBinding:
    prefix: --input_file
- id: in_job_id
  doc: "Job ID, will be the name of the output directory\n(default: )"
  type: Directory
  inputBinding:
    prefix: --job_id
- id: in_reference
  doc: 'Path to reference (.gbk or .fa) (default: )'
  type: File
  inputBinding:
    prefix: --reference
- id: in_mask
  doc: 'Path to mask file if used (.bed) (default: False)'
  type: File
  inputBinding:
    prefix: --mask
- id: in_kraken_db
  doc: "Path to DB for use with kraken2, if no DB present\nspeciation will not be\
    \ performed. [env var:\nKRAKEN2_DEFAULT_DB] (default: None)"
  type: File
  inputBinding:
    prefix: --kraken_db
- id: in_pipeline
  doc: "The pipeline to run. Preview (--preview - default)\nwill calculate mash-distances\
    \ and a mash-tree for\nquick inspection of your dataset. SNPs and ASSEMBLIES\n\
    ('sa') will perform SNPs and ASSEMBLIES. ALL ('all')\nwill perform SNPS, ASSEMBLIES\
    \ and ROARY for pan-genome\nanalysis (default: preview)"
  type: string
  inputBinding:
    prefix: --pipeline
- id: in_assembler
  doc: 'Assembler to use. (default: shovill)'
  type: string
  inputBinding:
    prefix: --assembler
- id: in_cpus
  doc: "Number of CPU cores to run, will define how many rules\nare run at a time\
    \ (default: 16)"
  type: long
  inputBinding:
    prefix: --cpus
- id: in_minal_n
  doc: "Minimum percent alignment. Isolates which do not align\nto reference at this\
    \ threshold will not be included in\ncore phylogeny. (default: 80)"
  type: long
  inputBinding:
    prefix: --minaln
- id: in_min_cov
  doc: "Minimum percent alignment. Isolates which do not have\naverage read coverage\
    \ above this threshold will not be\nincluded further analysis. (default: 40)"
  type: long
  inputBinding:
    prefix: --mincov
- id: in_prefill_path
  doc: "Path to existing assemblies - in the form\npath_to_somewhere/isolatename/contigs.fa\
    \ (default:\nNone)"
  type: File
  inputBinding:
    prefix: --prefillpath
- id: in_mdu
  doc: 'If running on MDU data (default: False)'
  type: boolean
  inputBinding:
    prefix: -mdu
- id: in_workdir
  doc: "The directory where Bohra will be run, default is\ncurrent directory (default:\
    \ /)"
  type: Directory
  inputBinding:
    prefix: -workdir
- id: in_resources
  doc: "Directory where templates are stored (default:\n/usr/local/lib/python3.7/site-\n\
    packages/bohra/templates)"
  type: Directory
  inputBinding:
    prefix: -resources
- id: in_force
  doc: "Add if you would like to force a complete restart of\nthe pipeline. All previous\
    \ logs will be lost.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: -force
- id: in_dry_run
  doc: "If you would like to see a dry run of commands to be\nexecuted. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: -dry-run
- id: in_cluster
  doc: "If you are running Bohra on a cluster. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --cluster
- id: in_json
  doc: "Path to cluster.json - required if --cluster is set\n(default: )"
  type: File
  inputBinding:
    prefix: --json
- id: in_queue
  doc: "Type of queue (sbatch or qsub currently supported) -\nrequired if --cluster\
    \ is set. (default: )"
  type: string
  inputBinding:
    prefix: --queue
- id: in_gubbins
  doc: "Set to use gubbins for recombination correction.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --gubbins
- id: in_keep
  doc: "If you are rerunning bohra over an exisiting directory\nset --keep to 'Y'\
    \ to archive report files - otherwise\nprevious reprot files will be removed.\
    \ (default: N)\n"
  type: string
  inputBinding:
    prefix: --keep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_job_id
  doc: "Job ID, will be the name of the output directory\n(default: )"
  type: Directory
  outputBinding:
    glob: $(inputs.in_job_id)
cwlVersion: v1.1
baseCommand:
- bohra
- run
