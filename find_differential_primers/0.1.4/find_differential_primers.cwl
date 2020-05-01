#!/usr/bin/env cwl-runner

baseCommand:
- find_differential_primers.py
class: CommandLineTool
cwlVersion: v1.0
id: find_differential_primers.py
inputs:
- doc: ''
  id: arg
  inputBinding:
    position: 0
  type: string
- doc: location of configuration file
  id: in_file
  inputBinding:
    prefix: --infile
  type: File
- doc: directory for output files
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: number of primers to find
  id: num_return
  inputBinding:
    prefix: --numreturn
  type: string
- doc: generate internal oligo as a hybridisation probe
  id: hybrid_probe
  inputBinding:
    prefix: --hybridprobe
  type: boolean
- doc: allow no more than two GC at the 3` end of primers
  id: filter_gc3_prime
  inputBinding:
    prefix: --filtergc3prime
  type: boolean
- doc: location of FASTA sequence file containing sequences from which a sequence-specific
    primer must amplify exactly one product.
  id: single_product
  inputBinding:
    prefix: --single_product
  type: string
- doc: location of Prodigal executable
  id: prodigal
  inputBinding:
    prefix: --prodigal
  type: string
- doc: location of EMBOSS eprimer3 executable
  id: eprimer3
  inputBinding:
    prefix: --eprimer3
  type: string
- doc: location of BLASTN/BLASTALL executable
  id: blast_exe
  inputBinding:
    prefix: --blast_exe
  type: string
- doc: location of BLAST database
  id: blast_db
  inputBinding:
    prefix: --blastdb
  type: string
- doc: use existing BLAST results
  id: use_blast
  inputBinding:
    prefix: --useblast
  type: boolean
- doc: do not restrict primer prediction to CDS
  id: no_cds
  inputBinding:
    prefix: --nocds
  type: boolean
- doc: do not carry out Prodigal prediction step
  id: no_prodigal
  inputBinding:
    prefix: --noprodigal
  type: boolean
- doc: do not carry out ePrimer3 prediction step
  id: noprimer3
  inputBinding:
    prefix: --noprimer3
  type: boolean
- doc: do not carry out PrimerSearch step
  id: no_primer_search
  inputBinding:
    prefix: --noprimersearch
  type: boolean
- doc: do not carry out primer classification step
  id: no_classify
  inputBinding:
    prefix: --noclassify
  type: boolean
- doc: optimal size for primer oligo
  id: o_size
  inputBinding:
    prefix: --osize
  type: string
- doc: minimum size for primer oligo
  id: minsize
  inputBinding:
    prefix: --minsize
  type: long
- doc: maximum size for primer oligo
  id: maxsize
  inputBinding:
    prefix: --maxsize
  type: long
- doc: optimal melting temperature for primer oligo
  id: otm
  inputBinding:
    prefix: --otm
  type: string
- doc: minimum melting temperature for primer oligo
  id: mint_m
  inputBinding:
    prefix: --mintm
  type: long
- doc: maximum melting temperature for primer oligo
  id: max_tm
  inputBinding:
    prefix: --maxtm
  type: long
- doc: optimal %GC for primer oligo
  id: ogc_percent
  inputBinding:
    prefix: --ogcpercent
  type: string
- doc: minimum %GC for primer oligo
  id: ming_c
  inputBinding:
    prefix: --mingc
  type: long
- doc: maximum %GC for primer oligo
  id: max_gc
  inputBinding:
    prefix: --maxgc
  type: long
- doc: optimal size for amplified region
  id: p_size_opt
  inputBinding:
    prefix: --psizeopt
  type: string
- doc: minimum size for amplified region
  id: p_size_min
  inputBinding:
    prefix: --psizemin
  type: string
- doc: maximum size for amplified region
  id: p_size_max
  inputBinding:
    prefix: --psizemax
  type: string
- doc: maximum run of repeated nucleotides in primer
  id: max_poly_x
  inputBinding:
    prefix: --maxpolyx
  type: long
- doc: allowed percentage mismatch in primersearch
  id: mismatch_percent
  inputBinding:
    prefix: --mismatchpercent
  type: string
- doc: optimal size for internal oligo
  id: oligo_o_size
  inputBinding:
    prefix: --oligoosize
  type: string
- doc: minimum size for internal oligo
  id: oligo_minsize
  inputBinding:
    prefix: --oligominsize
  type: string
- doc: maximum size for internal oligo
  id: oligo_maxsize
  inputBinding:
    prefix: --oligomaxsize
  type: string
- doc: optimal melting temperature for internal oligo
  id: oligo_otm
  inputBinding:
    prefix: --oligootm
  type: string
- doc: minimum melting temperature for internal oligo
  id: oligo_mint_m
  inputBinding:
    prefix: --oligomintm
  type: string
- doc: maximum melting temperature for internal oligo
  id: oligo_max_tm
  inputBinding:
    prefix: --oligomaxtm
  type: string
- doc: optimal %GC for internal oligo
  id: oligo_ogc_percent
  inputBinding:
    prefix: --oligoogcpercent
  type: string
- doc: minimum %GC for internal oligo
  id: oligo_ming_c
  inputBinding:
    prefix: --oligomingc
  type: string
- doc: maximum %GC for internal oligo
  id: oligo_max_gc
  inputBinding:
    prefix: --oligomaxgc
  type: string
- doc: maximum run of repeated nt in internal oligo
  id: oligo_max_poly_x
  inputBinding:
    prefix: --oligomaxpolyx
  type: string
- doc: number of CPUs to use in multiprocessing
  id: cpus
  inputBinding:
    prefix: --cpus
  type: string
- doc: use SGE job scheduler
  id: sge
  inputBinding:
    prefix: --sge
  type: boolean
- doc: clean up old output files before running
  id: clean
  inputBinding:
    prefix: --clean
  type: boolean
- doc: clean up old output files and exit
  id: clean_only
  inputBinding:
    prefix: --cleanonly
  type: boolean
- doc: script logfile location
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: report progress to log
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: report extra progress to log for debugging
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: store log files from each process
  id: keep_logs
  inputBinding:
    prefix: --keep_logs
  type: boolean
- doc: store called process log files in this directory
  id: log_dir
  inputBinding:
    prefix: --log_dir
  type: string
