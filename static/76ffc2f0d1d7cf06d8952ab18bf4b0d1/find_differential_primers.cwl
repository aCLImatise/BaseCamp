class: CommandLineTool
id: find_differential_primers.py.cwl
inputs:
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: location of configuration file
  type: File
  inputBinding:
    prefix: --infile
- id: outdir
  doc: directory for output files
  type: string
  inputBinding:
    prefix: --outdir
- id: num_return
  doc: number of primers to find
  type: string
  inputBinding:
    prefix: --numreturn
- id: hybrid_probe
  doc: generate internal oligo as a hybridisation probe
  type: boolean
  inputBinding:
    prefix: --hybridprobe
- id: filter_gc3_prime
  doc: allow no more than two GC at the 3` end of primers
  type: boolean
  inputBinding:
    prefix: --filtergc3prime
- id: single_product
  doc: location of FASTA sequence file containing sequences from which a sequence-specific
    primer must amplify exactly one product.
  type: string
  inputBinding:
    prefix: --single_product
- id: prodigal
  doc: location of Prodigal executable
  type: string
  inputBinding:
    prefix: --prodigal
- id: eprimer3
  doc: location of EMBOSS eprimer3 executable
  type: string
  inputBinding:
    prefix: --eprimer3
- id: blast_exe
  doc: location of BLASTN/BLASTALL executable
  type: string
  inputBinding:
    prefix: --blast_exe
- id: blast_db
  doc: location of BLAST database
  type: string
  inputBinding:
    prefix: --blastdb
- id: use_blast
  doc: use existing BLAST results
  type: boolean
  inputBinding:
    prefix: --useblast
- id: no_cds
  doc: do not restrict primer prediction to CDS
  type: boolean
  inputBinding:
    prefix: --nocds
- id: no_prodigal
  doc: do not carry out Prodigal prediction step
  type: boolean
  inputBinding:
    prefix: --noprodigal
- id: noprimer3
  doc: do not carry out ePrimer3 prediction step
  type: boolean
  inputBinding:
    prefix: --noprimer3
- id: no_primer_search
  doc: do not carry out PrimerSearch step
  type: boolean
  inputBinding:
    prefix: --noprimersearch
- id: no_classify
  doc: do not carry out primer classification step
  type: boolean
  inputBinding:
    prefix: --noclassify
- id: o_size
  doc: optimal size for primer oligo
  type: string
  inputBinding:
    prefix: --osize
- id: minsize
  doc: minimum size for primer oligo
  type: long
  inputBinding:
    prefix: --minsize
- id: maxsize
  doc: maximum size for primer oligo
  type: long
  inputBinding:
    prefix: --maxsize
- id: otm
  doc: optimal melting temperature for primer oligo
  type: string
  inputBinding:
    prefix: --otm
- id: mint_m
  doc: minimum melting temperature for primer oligo
  type: long
  inputBinding:
    prefix: --mintm
- id: max_tm
  doc: maximum melting temperature for primer oligo
  type: long
  inputBinding:
    prefix: --maxtm
- id: ogc_percent
  doc: optimal %GC for primer oligo
  type: string
  inputBinding:
    prefix: --ogcpercent
- id: ming_c
  doc: minimum %GC for primer oligo
  type: long
  inputBinding:
    prefix: --mingc
- id: max_gc
  doc: maximum %GC for primer oligo
  type: long
  inputBinding:
    prefix: --maxgc
- id: p_size_opt
  doc: optimal size for amplified region
  type: string
  inputBinding:
    prefix: --psizeopt
- id: p_size_min
  doc: minimum size for amplified region
  type: string
  inputBinding:
    prefix: --psizemin
- id: p_size_max
  doc: maximum size for amplified region
  type: string
  inputBinding:
    prefix: --psizemax
- id: max_poly_x
  doc: maximum run of repeated nucleotides in primer
  type: long
  inputBinding:
    prefix: --maxpolyx
- id: mismatch_percent
  doc: allowed percentage mismatch in primersearch
  type: string
  inputBinding:
    prefix: --mismatchpercent
- id: oligo_o_size
  doc: optimal size for internal oligo
  type: string
  inputBinding:
    prefix: --oligoosize
- id: oligo_minsize
  doc: minimum size for internal oligo
  type: string
  inputBinding:
    prefix: --oligominsize
- id: oligo_maxsize
  doc: maximum size for internal oligo
  type: string
  inputBinding:
    prefix: --oligomaxsize
- id: oligo_otm
  doc: optimal melting temperature for internal oligo
  type: string
  inputBinding:
    prefix: --oligootm
- id: oligo_mint_m
  doc: minimum melting temperature for internal oligo
  type: string
  inputBinding:
    prefix: --oligomintm
- id: oligo_max_tm
  doc: maximum melting temperature for internal oligo
  type: string
  inputBinding:
    prefix: --oligomaxtm
- id: oligo_ogc_percent
  doc: optimal %GC for internal oligo
  type: string
  inputBinding:
    prefix: --oligoogcpercent
- id: oligo_ming_c
  doc: minimum %GC for internal oligo
  type: string
  inputBinding:
    prefix: --oligomingc
- id: oligo_max_gc
  doc: maximum %GC for internal oligo
  type: string
  inputBinding:
    prefix: --oligomaxgc
- id: oligo_max_poly_x
  doc: maximum run of repeated nt in internal oligo
  type: string
  inputBinding:
    prefix: --oligomaxpolyx
- id: cpus
  doc: number of CPUs to use in multiprocessing
  type: string
  inputBinding:
    prefix: --cpus
- id: sge
  doc: use SGE job scheduler
  type: boolean
  inputBinding:
    prefix: --sge
- id: clean
  doc: clean up old output files before running
  type: boolean
  inputBinding:
    prefix: --clean
- id: clean_only
  doc: clean up old output files and exit
  type: boolean
  inputBinding:
    prefix: --cleanonly
- id: log_file
  doc: script logfile location
  type: string
  inputBinding:
    prefix: --logfile
- id: verbose
  doc: report progress to log
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: report extra progress to log for debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: keep_logs
  doc: store log files from each process
  type: boolean
  inputBinding:
    prefix: --keep_logs
- id: log_dir
  doc: store called process log files in this directory
  type: string
  inputBinding:
    prefix: --log_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- find_differential_primers.py
