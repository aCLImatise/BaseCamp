class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/virsorter_train_feature.cwl
inputs:
- id: working_dir
  doc: output directory  [required]
  type: File
  inputBinding:
    prefix: --working-dir
- id: seq_file
  doc: genome sequence file for training; for file pattern globbing, put quotes around
    the pattern, eg. "fasta-dir/*.fa"  [required]
  type: string
  inputBinding:
    prefix: --seqfile
- id: hmm
  doc: customized viral HMMs for training; default to the one used in VirSorter2
  type: File
  inputBinding:
    prefix: --hmm
- id: hallmark
  doc: 'hallmark gene hmm list from -hmm for training (a tab separated file with three
    columns: 1. hmm name 2. gene name of hmm 3. hmm bit score cutoff); default to
    the one used for dsDNAphage in VirSorter2'
  type: File
  inputBinding:
    prefix: --hallmark
- id: prodigal_train
  doc: customized training db from prodigal; default to the one used in prodigal --meta
    mode
  type: File
  inputBinding:
    prefix: --prodigal-train
- id: frags_per_genome
  doc: 'number of random DNA fragments collected from each genome  [default: 5]'
  type: long
  inputBinding:
    prefix: --frags-per-genome
- id: jobs
  doc: 'max # of jobs in parallel  [default: 8]'
  type: long
  inputBinding:
    prefix: --jobs
- id: min_length
  doc: 'minimum size of random DNA fragment for training [default: 1000]'
  type: long
  inputBinding:
    prefix: --min-length
- id: max_orf_per_seq
  doc: 'Max # of orf used for computing taxonomic features; if # of orf in a seq exceeds
    the max limit, it is sub-sampled to this # to reduce computation; to turn off
    this, set it to -1 [default: 20]'
  type: long
  inputBinding:
    prefix: --max-orf-per-seq
- id: genome_as_bin
  doc: 'if applied, each file (genome bin) is a genome in --seqfile, else each sequence
    is a genome [default: False]'
  type: boolean
  inputBinding:
    prefix: --genome-as-bin
- id: use_cond_a_off
  doc: 'Stop using the conda envs (vs2.yaml) that come with this package and use what
    are installed in current system; Only useful when you want to install dependencies
    on your own with your own prefer versions  [default: False]'
  type: boolean
  inputBinding:
    prefix: --use-conda-off
- id: snake_make_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- virsorter
- train-feature
