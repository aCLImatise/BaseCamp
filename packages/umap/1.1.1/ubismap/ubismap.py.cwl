class: CommandLineTool
id: ubismap.py.cwl
inputs:
- id: in_terse_dot
  doc: these options do not exist in your cluster,
  type: string
  inputBinding:
    prefix: -terse.
- id: in_km_ers
  doc: "[KMERS [KMERS ...]]\nKmer length for mappability. e.g. 24 36 50 100"
  type: boolean
  inputBinding:
    prefix: --kmers
- id: in_genome_ready
  doc: "If in the 'out_dir' there already exists a /chrs and\n/genome subdirectory\
    \ where genome directory has a\ngenome.fasta with bowtie index suffix as\n'BisMap_bowtie.ind'\
    \ or 'Umap_bowtie.ind' if --Bismap\nis not specified and the ./chrs directory\
    \ has\nindivudal chromosome FASTA files, specify this option"
  type: boolean
  inputBinding:
    prefix: -GenomeReady
- id: in_bis_map
  doc: "Specify -Bismap if double genome indexing is expected.\nThis would create\
    \ a genome that is concatenation of\nforward and reverse complement. If -C2T or\
    \ -G2A is\nexpected, this must be specified"
  type: boolean
  inputBinding:
    prefix: -Bismap
- id: in_c_two_t
  doc: If --Bismap is provided, specify --C2T or --G2A
  type: boolean
  inputBinding:
    prefix: -C2T
- id: in_g_two_a
  doc: If --Bismap is provided, specify --C2T or --G2A
  type: boolean
  inputBinding:
    prefix: -G2A
- id: in_exit_after_indexing
  doc: If you only want the index, specify this option
  type: boolean
  inputBinding:
    prefix: -ExitAfterIndexing
- id: in_simultaneous_jobs
  doc: Number of jobs to run simultaneously
  type: long
  inputBinding:
    prefix: -SimultaneousJobs
- id: in_var_id
  doc: "Environmental variable for accessing job IDs. By\ndefault is set to SGE_TASK_ID\
    \ assuming a sungrid\nengine environment."
  type: string
  inputBinding:
    prefix: -var_id
- id: in_write_script
  doc: "Specify -write <Path to output job submission file> if\ninstead of direct\
    \ execution, you want to save the job\nsubmission file."
  type: File
  inputBinding:
    prefix: -write_script
- id: in_pipe
  doc: "If -pipe is specified, the software command will be\npiped into the qsub command.\
    \ For example instead of:\n'qsub -q <queuename> -N <jobname> python <script>.py\n\
    <arg1> <arg2>', 'echo python <script>.py <arg1> <arg2>\n| qsub -q <queuename>\
    \ -N <jobname>' will be\nwritten/executed."
  type: boolean
  inputBinding:
    prefix: -pipe
- id: in_chunk
  doc: Length of chromosomal chunks
  type: long
  inputBinding:
    prefix: -chunk
- id: in_fast_a_path
  doc: Path to the genome fasta file.
  type: string
  inputBinding:
    position: 0
- id: in_chr_size_path
  doc: "Path to a 2-column file where the first column is the\nchromosome name and\
    \ the second column is its size"
  type: string
  inputBinding:
    position: 1
- id: in_out_dir
  doc: Path to directory to create output files/folders
  type: string
  inputBinding:
    position: 2
- id: in_queue_name
  doc: Queue name for qsub job submission.
  type: string
  inputBinding:
    position: 3
- id: in_bowtie_path
  doc: Path to bowtie-build executable
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_script
  doc: "Specify -write <Path to output job submission file> if\ninstead of direct\
    \ execution, you want to save the job\nsubmission file."
  type: File
  outputBinding:
    glob: $(inputs.in_write_script)
cwlVersion: v1.1
baseCommand:
- ubismap.py
