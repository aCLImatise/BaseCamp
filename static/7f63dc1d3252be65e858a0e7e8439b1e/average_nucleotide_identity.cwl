class: CommandLineTool
id: average_nucleotide_identity.py.cwl
inputs:
- id: outdir
  doc: Output directory (required)
  type: string
  inputBinding:
    prefix: --outdir
- id: in_dir
  doc: Input directory name (required)
  type: string
  inputBinding:
    prefix: --indir
- id: verbose
  doc: Give verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force
  doc: Force file overwriting
  type: boolean
  inputBinding:
    prefix: --force
- id: frag_size
  doc: Sequence fragment size for ANIb (default 1020)
  type: string
  inputBinding:
    prefix: --fragsize
- id: log_file
  doc: Logfile location
  type: string
  inputBinding:
    prefix: --logfile
- id: skip_nuc_mer
  doc: Skip NUCmer runs, for testing (e.g. if output already present)
  type: boolean
  inputBinding:
    prefix: --skip_nucmer
- id: skip_blastn
  doc: Skip BLASTN runs, for testing (e.g. if output already present)
  type: boolean
  inputBinding:
    prefix: --skip_blastn
- id: no_clobber
  doc: Don't nuke existing files
  type: boolean
  inputBinding:
    prefix: --noclobber
- id: no_compress
  doc: Don't compress/delete the comparison output
  type: boolean
  inputBinding:
    prefix: --nocompress
- id: graphics
  doc: Generate heatmap of ANI
  type: boolean
  inputBinding:
    prefix: --graphics
- id: g_format
  doc: Graphics output format(s) [pdf|png|jpg|svg] (default pdf,png,eps meaning three
    file formats)
  type: string
  inputBinding:
    prefix: --gformat
- id: g_method
  doc: Graphics output method (default mpl)
  type: string
  inputBinding:
    prefix: --gmethod
- id: labels
  doc: Path to file containing sequence labels
  type: string
  inputBinding:
    prefix: --labels
- id: classes
  doc: Path to file containing sequence classes
  type: string
  inputBinding:
    prefix: --classes
- id: method
  doc: ANI method (default ANIm)
  type: string
  inputBinding:
    prefix: --method
- id: scheduler
  doc: Job scheduler (default multiprocessing, i.e. locally)
  type: string
  inputBinding:
    prefix: --scheduler
- id: workers
  doc: Number of worker processes for multiprocessing (default zero, meaning use all
    available cores)
  type: string
  inputBinding:
    prefix: --workers
- id: sge_group_size
  doc: Number of jobs to place in an SGE array group (default 10000)
  type: string
  inputBinding:
    prefix: --SGEgroupsize
- id: sge_args
  doc: Additional arguments for qsub
  type: string
  inputBinding:
    prefix: --SGEargs
- id: max_match
  doc: Override MUMmer to allow all NUCmer matches
  type: boolean
  inputBinding:
    prefix: --maxmatch
- id: nuc_mer_exe
  doc: Path to NUCmer executable
  type: string
  inputBinding:
    prefix: --nucmer_exe
- id: filter_exe
  doc: Path to delta-filter executable
  type: string
  inputBinding:
    prefix: --filter_exe
- id: blastn_exe
  doc: Path to BLASTN+ executable
  type: string
  inputBinding:
    prefix: --blastn_exe
- id: make_blast_db_exe
  doc: Path to BLAST+ makeblastdb executable
  type: string
  inputBinding:
    prefix: --makeblastdb_exe
- id: blast_all_exe
  doc: Path to BLASTALL executable
  type: string
  inputBinding:
    prefix: --blastall_exe
- id: format_db_exe
  doc: Path to BLAST formatdb executable
  type: string
  inputBinding:
    prefix: --formatdb_exe
- id: write_excel
  doc: Write Excel format output tables
  type: boolean
  inputBinding:
    prefix: --write_excel
- id: re_render
  doc: Rerender graphics output without recalculation
  type: boolean
  inputBinding:
    prefix: --rerender
- id: subsample
  doc: Subsample a percentage [0-1] or specific number (1-n) of input sequences
  type: string
  inputBinding:
    prefix: --subsample
- id: seed
  doc: Set random seed for reproducible subsampling.
  type: string
  inputBinding:
    prefix: --seed
- id: job_prefix
  doc: Prefix for SGE jobs (default ANI).
  type: string
  inputBinding:
    prefix: --jobprefix
outputs: []
cwlVersion: v1.1
baseCommand:
- average_nucleotide_identity.py
