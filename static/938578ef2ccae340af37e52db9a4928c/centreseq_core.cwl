class: CommandLineTool
id: centreseq_core.cwl
inputs:
- id: in_fast_a_dir
  doc: "Path to directory containing *.fasta files for\ninput to the core pipeline\
    \  [required]"
  type: File?
  inputBinding:
    prefix: --fasta-dir
- id: in_outdir
  doc: "Root directory to store all output files. If\nthis directory already exists,\
    \ the pipeline\nwill attempt to skip the Prokka step by reading\nin the existing\
    \ Prokka output directory, but\nwill overwrite all other existing result files.\n\
    [required]"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_n_cpu
  doc: "Number of CPUs to dedicate to parallelizable\nsteps of the pipeline. Will\
    \ take all available\nCPUs - 1 by default."
  type: long?
  inputBinding:
    prefix: --n-cpu
- id: in_n_cpu_me_do_id
  doc: "Number of CPUs for the representative medoid\npicking step (if enabled). You\
    \ will need\nsubstantial RAM per CPU."
  type: long?
  inputBinding:
    prefix: --n-cpu-medoid
- id: in_min_seq_id
  doc: "Sets the mmseqs cluster parameter \"--min-seq-\nid\". Defaults to 0.95."
  type: double?
  inputBinding:
    prefix: --min-seq-id
- id: in_coverage_length
  doc: "Sets the mmseqs cluster coverage parameter \"-c\"\ndirectly. Defaults to 0.95,\
    \ which is the\nrecommended setting."
  type: double?
  inputBinding:
    prefix: --coverage-length
- id: in_me_do_id_reps_eqs
  doc: "This setting will identify the representative\nmedoid nucleotide sequence\
    \ for each core\ncluster. Enabling this will increase\ncomputation time considerably.\
    \ Note that this\nparameter has no effect on the number of core\nclusters detected."
  type: boolean?
  inputBinding:
    prefix: --medoid-repseqs
- id: in_pairwise
  doc: "Generate pairwise comparisons of all core\ngenomes. This setting allows for\
    \ viewing an\ninteractive network chart which visualizes core\ngenome relatedness."
  type: boolean?
  inputBinding:
    prefix: --pairwise
- id: in_verbose
  doc: Set this flag to enable more verbose logging.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Root directory to store all output files. If\nthis directory already exists,\
    \ the pipeline\nwill attempt to skip the Prokka step by reading\nin the existing\
    \ Prokka output directory, but\nwill overwrite all other existing result files.\n\
    [required]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- centreseq
- core
