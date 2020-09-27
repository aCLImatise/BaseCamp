class: CommandLineTool
id: virsorter_train_feature.cwl
inputs:
- id: in_working_dir
  doc: output directory  [required]
  type: Directory
  inputBinding:
    prefix: --working-dir
- id: in_seq_file
  doc: "genome sequence file for training; for file\npattern globbing, put quotes\
    \ around the pattern,\neg. \"fasta-dir/*.fa\"  [required]"
  type: File
  inputBinding:
    prefix: --seqfile
- id: in_hmm
  doc: "customized viral HMMs for training; default to\nthe one used in VirSorter2"
  type: File
  inputBinding:
    prefix: --hmm
- id: in_hallmark
  doc: "hallmark gene hmm list from -hmm for training (a\ntab separated file with\
    \ three columns: 1. hmm\nname 2. gene name of hmm 3. hmm bit score\ncutoff); default\
    \ to the one used for dsDNAphage\nin VirSorter2"
  type: File
  inputBinding:
    prefix: --hallmark
- id: in_prodigal_train
  doc: "customized training db from prodigal; default to\nthe one used in prodigal\
    \ --meta mode"
  type: File
  inputBinding:
    prefix: --prodigal-train
- id: in_frags_per_genome
  doc: "number of random DNA fragments collected from\neach genome  [default: 5]"
  type: long
  inputBinding:
    prefix: --frags-per-genome
- id: in_jobs
  doc: 'max # of jobs in parallel  [default: 8]'
  type: long
  inputBinding:
    prefix: --jobs
- id: in_min_length
  doc: "minimum size of random DNA fragment for training\n[default: 1000]"
  type: long
  inputBinding:
    prefix: --min-length
- id: in_max_orf_per_seq
  doc: "Max # of orf used for computing taxonomic\nfeatures; if # of orf in a seq\
    \ exceeds the max\nlimit, it is sub-sampled to this # to reduce\ncomputation;\
    \ to turn off this, set it to -1\n[default: 20]"
  type: long
  inputBinding:
    prefix: --max-orf-per-seq
- id: in_genome_as_bin
  doc: "if applied, each file (genome bin) is a genome\nin --seqfile, else each sequence\
    \ is a genome\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --genome-as-bin
- id: in_use_cond_a_off
  doc: "Stop using the conda envs (vs2.yaml) that come\nwith this package and use\
    \ what are installed in\ncurrent system; Only useful when you want to\ninstall\
    \ dependencies on your own with your own\nprefer versions  [default: False]"
  type: boolean
  inputBinding:
    prefix: --use-conda-off
- id: in_snake_make_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_working_dir
  doc: output directory  [required]
  type: Directory
  outputBinding:
    glob: $(inputs.in_working_dir)
cwlVersion: v1.1
baseCommand:
- virsorter
- train-feature
