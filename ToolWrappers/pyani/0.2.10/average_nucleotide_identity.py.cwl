class: CommandLineTool
id: average_nucleotide_identity.py.cwl
inputs:
- id: in_outdir
  doc: Output directory (required)
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_in_dir
  doc: Input directory name (required)
  type: Directory
  inputBinding:
    prefix: --indir
- id: in_verbose
  doc: Give verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_force
  doc: Force file overwriting
  type: boolean
  inputBinding:
    prefix: --force
- id: in_frag_size
  doc: Sequence fragment size for ANIb (default 1020)
  type: long
  inputBinding:
    prefix: --fragsize
- id: in_log_file
  doc: Logfile location
  type: File
  inputBinding:
    prefix: --logfile
- id: in_skip_nuc_mer
  doc: "Skip NUCmer runs, for testing (e.g. if output already\npresent)"
  type: boolean
  inputBinding:
    prefix: --skip_nucmer
- id: in_skip_blastn
  doc: "Skip BLASTN runs, for testing (e.g. if output already\npresent)"
  type: boolean
  inputBinding:
    prefix: --skip_blastn
- id: in_no_clobber
  doc: Don't nuke existing files
  type: boolean
  inputBinding:
    prefix: --noclobber
- id: in_no_compress
  doc: Don't compress/delete the comparison output
  type: boolean
  inputBinding:
    prefix: --nocompress
- id: in_graphics
  doc: Generate heatmap of ANI
  type: boolean
  inputBinding:
    prefix: --graphics
- id: in_g_format
  doc: "Graphics output format(s) [pdf|png|jpg|svg] (default\npdf,png,eps meaning\
    \ three file formats)"
  type: File
  inputBinding:
    prefix: --gformat
- id: in_g_method
  doc: Graphics output method (default mpl)
  type: string
  inputBinding:
    prefix: --gmethod
- id: in_labels
  doc: Path to file containing sequence labels
  type: File
  inputBinding:
    prefix: --labels
- id: in_classes
  doc: Path to file containing sequence classes
  type: File
  inputBinding:
    prefix: --classes
- id: in_method
  doc: ANI method (default ANIm)
  type: string
  inputBinding:
    prefix: --method
- id: in_scheduler
  doc: Job scheduler (default multiprocessing, i.e. locally)
  type: string
  inputBinding:
    prefix: --scheduler
- id: in_workers
  doc: "Number of worker processes for multiprocessing\n(default zero, meaning use\
    \ all available cores)"
  type: long
  inputBinding:
    prefix: --workers
- id: in_sge_group_size
  doc: "Number of jobs to place in an SGE array group (default\n10000)"
  type: long
  inputBinding:
    prefix: --SGEgroupsize
- id: in_sge_args
  doc: Additional arguments for qsub
  type: string
  inputBinding:
    prefix: --SGEargs
- id: in_max_match
  doc: Override MUMmer to allow all NUCmer matches
  type: boolean
  inputBinding:
    prefix: --maxmatch
- id: in_nuc_mer_exe
  doc: Path to NUCmer executable
  type: File
  inputBinding:
    prefix: --nucmer_exe
- id: in_filter_exe
  doc: Path to delta-filter executable
  type: File
  inputBinding:
    prefix: --filter_exe
- id: in_blastn_exe
  doc: Path to BLASTN+ executable
  type: File
  inputBinding:
    prefix: --blastn_exe
- id: in_make_blast_db_exe
  doc: Path to BLAST+ makeblastdb executable
  type: File
  inputBinding:
    prefix: --makeblastdb_exe
- id: in_blast_all_exe
  doc: Path to BLASTALL executable
  type: File
  inputBinding:
    prefix: --blastall_exe
- id: in_format_db_exe
  doc: Path to BLAST formatdb executable
  type: File
  inputBinding:
    prefix: --formatdb_exe
- id: in_write_excel
  doc: Write Excel format output tables
  type: boolean
  inputBinding:
    prefix: --write_excel
- id: in_re_render
  doc: Rerender graphics output without recalculation
  type: boolean
  inputBinding:
    prefix: --rerender
- id: in_subsample
  doc: "Subsample a percentage [0-1] or specific number (1-n)\nof input sequences"
  type: long
  inputBinding:
    prefix: --subsample
- id: in_seed
  doc: Set random seed for reproducible subsampling.
  type: string
  inputBinding:
    prefix: --seed
- id: in_job_prefix
  doc: "Prefix for SGE jobs (default ANI).\n"
  type: string
  inputBinding:
    prefix: --jobprefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory (required)
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_g_format
  doc: "Graphics output format(s) [pdf|png|jpg|svg] (default\npdf,png,eps meaning\
    \ three file formats)"
  type: File
  outputBinding:
    glob: $(inputs.in_g_format)
cwlVersion: v1.1
baseCommand:
- average_nucleotide_identity.py
