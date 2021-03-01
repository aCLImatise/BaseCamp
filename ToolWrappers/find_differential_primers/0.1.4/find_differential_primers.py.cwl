class: CommandLineTool
id: find_differential_primers.py.cwl
inputs:
- id: in_in_file
  doc: location of configuration file
  type: File?
  inputBinding:
    prefix: --infile
- id: in_outdir
  doc: directory for output files
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_num_return
  doc: number of primers to find
  type: long?
  inputBinding:
    prefix: --numreturn
- id: in_hybrid_probe
  doc: generate internal oligo as a hybridisation probe
  type: boolean?
  inputBinding:
    prefix: --hybridprobe
- id: in_filter_gc_three_prime
  doc: allow no more than two GC at the 3` end of primers
  type: boolean?
  inputBinding:
    prefix: --filtergc3prime
- id: in_single_product
  doc: "location of FASTA sequence file containing sequences\nfrom which a sequence-specific\
    \ primer must amplify\nexactly one product."
  type: File?
  inputBinding:
    prefix: --single_product
- id: in_prodigal
  doc: location of Prodigal executable
  type: string?
  inputBinding:
    prefix: --prodigal
- id: in_e_primer_three
  doc: location of EMBOSS eprimer3 executable
  type: long?
  inputBinding:
    prefix: --eprimer3
- id: in_blast_exe
  doc: location of BLASTN/BLASTALL executable
  type: string?
  inputBinding:
    prefix: --blast_exe
- id: in_blast_db
  doc: location of BLAST database
  type: string?
  inputBinding:
    prefix: --blastdb
- id: in_use_blast
  doc: use existing BLAST results
  type: boolean?
  inputBinding:
    prefix: --useblast
- id: in_no_cds
  doc: do not restrict primer prediction to CDS
  type: boolean?
  inputBinding:
    prefix: --nocds
- id: in_no_prodigal
  doc: do not carry out Prodigal prediction step
  type: boolean?
  inputBinding:
    prefix: --noprodigal
- id: in_no_primer_three
  doc: do not carry out ePrimer3 prediction step
  type: boolean?
  inputBinding:
    prefix: --noprimer3
- id: in_no_primer_search
  doc: do not carry out PrimerSearch step
  type: boolean?
  inputBinding:
    prefix: --noprimersearch
- id: in_no_classify
  doc: do not carry out primer classification step
  type: boolean?
  inputBinding:
    prefix: --noclassify
- id: in_o_size
  doc: optimal size for primer oligo
  type: long?
  inputBinding:
    prefix: --osize
- id: in_minsize
  doc: minimum size for primer oligo
  type: long?
  inputBinding:
    prefix: --minsize
- id: in_maxsize
  doc: maximum size for primer oligo
  type: long?
  inputBinding:
    prefix: --maxsize
- id: in_otm
  doc: optimal melting temperature for primer oligo
  type: string?
  inputBinding:
    prefix: --otm
- id: in_mint_m
  doc: minimum melting temperature for primer oligo
  type: string?
  inputBinding:
    prefix: --mintm
- id: in_max_tm
  doc: maximum melting temperature for primer oligo
  type: long?
  inputBinding:
    prefix: --maxtm
- id: in_ogc_percent
  doc: optimal %GC for primer oligo
  type: string?
  inputBinding:
    prefix: --ogcpercent
- id: in_ming_c
  doc: minimum %GC for primer oligo
  type: string?
  inputBinding:
    prefix: --mingc
- id: in_max_gc
  doc: maximum %GC for primer oligo
  type: long?
  inputBinding:
    prefix: --maxgc
- id: in_p_size_opt
  doc: optimal size for amplified region
  type: long?
  inputBinding:
    prefix: --psizeopt
- id: in_p_size_min
  doc: minimum size for amplified region
  type: long?
  inputBinding:
    prefix: --psizemin
- id: in_p_size_max
  doc: maximum size for amplified region
  type: long?
  inputBinding:
    prefix: --psizemax
- id: in_max_poly_x
  doc: maximum run of repeated nucleotides in primer
  type: long?
  inputBinding:
    prefix: --maxpolyx
- id: in_mismatch_percent
  doc: allowed percentage mismatch in primersearch
  type: string?
  inputBinding:
    prefix: --mismatchpercent
- id: in_oligo_o_size
  doc: optimal size for internal oligo
  type: long?
  inputBinding:
    prefix: --oligoosize
- id: in_oligo_minsize
  doc: minimum size for internal oligo
  type: long?
  inputBinding:
    prefix: --oligominsize
- id: in_oligo_maxsize
  doc: maximum size for internal oligo
  type: long?
  inputBinding:
    prefix: --oligomaxsize
- id: in_oligo_otm
  doc: optimal melting temperature for internal oligo
  type: string?
  inputBinding:
    prefix: --oligootm
- id: in_oligo_mint_m
  doc: minimum melting temperature for internal oligo
  type: string?
  inputBinding:
    prefix: --oligomintm
- id: in_oligo_max_tm
  doc: maximum melting temperature for internal oligo
  type: long?
  inputBinding:
    prefix: --oligomaxtm
- id: in_oligo_ogc_percent
  doc: optimal %GC for internal oligo
  type: string?
  inputBinding:
    prefix: --oligoogcpercent
- id: in_oligo_ming_c
  doc: minimum %GC for internal oligo
  type: string?
  inputBinding:
    prefix: --oligomingc
- id: in_oligo_max_gc
  doc: maximum %GC for internal oligo
  type: long?
  inputBinding:
    prefix: --oligomaxgc
- id: in_oligo_max_poly_x
  doc: maximum run of repeated nt in internal oligo
  type: long?
  inputBinding:
    prefix: --oligomaxpolyx
- id: in_cpus
  doc: number of CPUs to use in multiprocessing
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_sge
  doc: use SGE job scheduler
  type: boolean?
  inputBinding:
    prefix: --sge
- id: in_clean
  doc: clean up old output files before running
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_clean_only
  doc: clean up old output files and exit
  type: boolean?
  inputBinding:
    prefix: --cleanonly
- id: in_log_file
  doc: script logfile location
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_verbose
  doc: report progress to log
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: report extra progress to log for debugging
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_keep_logs
  doc: store log files from each process
  type: boolean?
  inputBinding:
    prefix: --keep_logs
- id: in_log_dir
  doc: store called process log files in this directory
  type: Directory?
  inputBinding:
    prefix: --log_dir
- id: in_arg
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: directory for output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- find_differential_primers.py
