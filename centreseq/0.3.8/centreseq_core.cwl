class: CommandLineTool
id: centreseq_core.cwl
inputs:
- id: fast_a_dir
  doc: Path to directory containing *.fasta files for input to the core pipeline  [required]
  type: File
  inputBinding:
    prefix: --fasta-dir
- id: outdir
  doc: Root directory to store all output files. If this directory already exists,
    the pipeline will attempt to skip the Prokka step by reading in the existing Prokka
    output directory, but will overwrite all other existing result files. [required]
  type: File
  inputBinding:
    prefix: --outdir
- id: n_cpu
  doc: Number of CPUs to dedicate to parallelizable steps of the pipeline. Will take
    all available CPUs - 1 by default.
  type: long
  inputBinding:
    prefix: --n-cpu
- id: n_cpu_me_do_id
  doc: Number of CPUs for the representative medoid picking step (if enabled). You
    will need substantial RAM per CPU.
  type: long
  inputBinding:
    prefix: --n-cpu-medoid
- id: min_seq_id
  doc: Sets the mmseqs cluster parameter "--min-seq- id". Defaults to 0.95.
  type: double
  inputBinding:
    prefix: --min-seq-id
- id: coverage_length
  doc: Sets the mmseqs cluster coverage parameter "-c" directly. Defaults to 0.95,
    which is the recommended setting.
  type: double
  inputBinding:
    prefix: --coverage-length
- id: me_do_id_reps_eqs
  doc: This setting will identify the representative medoid nucleotide sequence for
    each core cluster. Enabling this will increase computation time considerably.
    Note that this parameter has no effect on the number of core clusters detected.
  type: boolean
  inputBinding:
    prefix: --medoid-repseqs
- id: pairwise
  doc: Generate pairwise comparisons of all core genomes. This setting allows for
    viewing an interactive network chart which visualizes core genome relatedness.
  type: boolean
  inputBinding:
    prefix: --pairwise
- id: verbose
  doc: Set this flag to enable more verbose logging.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- centreseq
- core
