class: CommandLineTool
id: ubismap.py.cwl
inputs:
- id: fast_a_path
  doc: Path to the genome fasta file.
  type: string
  inputBinding:
    position: 0
- id: chr_size_path
  doc: Path to a 2-column file where the first column is the chromosome name and the
    second column is its size
  type: string
  inputBinding:
    position: 1
- id: out_dir
  doc: Path to directory to create output files/folders
  type: string
  inputBinding:
    position: 2
- id: queue_name
  doc: Queue name for qsub job submission.
  type: string
  inputBinding:
    position: 3
- id: bowtie_path
  doc: Path to bowtie-build executable
  type: string
  inputBinding:
    position: 4
- id: km_ers
  doc: '[KMERS [KMERS ...]] Kmer length for mappability. e.g. 24 36 50 100'
  type: boolean
  inputBinding:
    prefix: --kmers
- id: genome_ready
  doc: If in the 'out_dir' there already exists a /chrs and /genome subdirectory where
    genome directory has a genome.fasta with bowtie index suffix as 'BisMap_bowtie.ind'
    or 'Umap_bowtie.ind' if --Bismap is not specified and the ./chrs directory has
    indivudal chromosome FASTA files, specify this option
  type: boolean
  inputBinding:
    prefix: -GenomeReady
- id: bis_map
  doc: Specify -Bismap if double genome indexing is expected. This would create a
    genome that is concatenation of forward and reverse complement. If -C2T or -G2A
    is expected, this must be specified
  type: boolean
  inputBinding:
    prefix: -Bismap
- id: c2t
  doc: If --Bismap is provided, specify --C2T or --G2A
  type: boolean
  inputBinding:
    prefix: -C2T
- id: g2a
  doc: If --Bismap is provided, specify --C2T or --G2A
  type: boolean
  inputBinding:
    prefix: -G2A
- id: exit_after_indexing
  doc: If you only want the index, specify this option
  type: boolean
  inputBinding:
    prefix: -ExitAfterIndexing
- id: simultaneous_jobs
  doc: Number of jobs to run simultaneously
  type: string
  inputBinding:
    prefix: -SimultaneousJobs
- id: var_id
  doc: Environmental variable for accessing job IDs. By default is set to SGE_TASK_ID
    assuming a sungrid engine environment.
  type: string
  inputBinding:
    prefix: -var_id
- id: write_script
  doc: Specify -write <Path to output job submission file> if instead of direct execution,
    you want to save the job submission file.
  type: string
  inputBinding:
    prefix: -write_script
- id: pipe
  doc: "If -pipe is specified, the software command will be piped into the qsub command.\
    \ For example instead of: 'qsub -q <queuename> -N <jobname> python <script>.py\
    \ <arg1> <arg2>', 'echo python <script>.py <arg1> <arg2> | qsub -q <queuename>\
    \ -N <jobname>' will be written/executed."
  type: boolean
  inputBinding:
    prefix: -pipe
- id: chunk
  doc: Length of chromosomal chunks
  type: string
  inputBinding:
    prefix: -chunk
outputs: []
cwlVersion: v1.1
baseCommand:
- ubismap.py
