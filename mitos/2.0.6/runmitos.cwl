class: CommandLineTool
id: runmitos.py.cwl
inputs:
- id: input
  doc: the input file
  type: File
  inputBinding:
    prefix: --input
- id: fast_a
  doc: input fasta sequence
  type: string
  inputBinding:
    prefix: --fasta
- id: code
  doc: the genetic code
  type: string
  inputBinding:
    prefix: --code
- id: outdir
  doc: the directory where the output is written
  type: string
  inputBinding:
    prefix: --outdir
- id: linear
  doc: treat sequence as linear
  type: boolean
  inputBinding:
    prefix: --linear
- id: refseq_ver
  doc: directory containing the reference data (relative to --refdir)
  type: string
  inputBinding:
    prefix: --refseqver
- id: ref_dir
  doc: base directory containing the reference data
  type: string
  inputBinding:
    prefix: --refdir
- id: prot
  doc: 'position of protein prediction in 1st round (0: skip)'
  type: string
  inputBinding:
    prefix: --prot
- id: trna
  doc: 'position of tRNA prediction in 1st round (0: skip)'
  type: string
  inputBinding:
    prefix: --trna
- id: rrna
  doc: 'position of rRNA prediction in 1st round (0: skip)'
  type: string
  inputBinding:
    prefix: --rrna
- id: intron
  doc: 'position of intron prediction in 1st round (0: skip)'
  type: long
  inputBinding:
    prefix: --intron
- id: or_il
  doc: 'position of OL prediction in 1st round (0: skip)'
  type: string
  inputBinding:
    prefix: --oril
- id: or_ih
  doc: 'position of OH prediction in 1st round (0: skip)'
  type: string
  inputBinding:
    prefix: --orih
- id: fi_nov_l
  doc: final overlap <= NRNT nucleotides
  type: string
  inputBinding:
    prefix: --finovl
- id: circ_rot
  doc: 'cir circular: rotate mitogenome by DEG and DEG+180'
  type: string
  inputBinding:
    prefix: --circrot
- id: best
  doc: annotate only the best copy of each feature
  type: boolean
  inputBinding:
    prefix: --best
- id: frag_fac
  doc: allow fragments to differ in quality/evalue by at most a factor FACTOR. Ignored
    if <= 0.
  type: string
  inputBinding:
    prefix: --fragfac
- id: frag_ovl
  doc: allow query range overlaps up for FRACTION for fragments
  type: string
  inputBinding:
    prefix: --fragovl
- id: no_plots
  doc: do not create the plots.
  type: boolean
  inputBinding:
    prefix: --noplots
- id: evalue
  doc: discard BLAST hits with -1*log(e-value)<EVL (EVL < 1 has no effect)
  type: string
  inputBinding:
    prefix: --evalue
- id: cut_off
  doc: discard positions with quality <.5 of max
  type: string
  inputBinding:
    prefix: --cutoff
- id: clip_fac
  doc: overlapping features of the same name differing by at most a factor of FACTOR
    are clipped
  type: string
  inputBinding:
    prefix: --clipfac
- id: ncbi_code
  doc: 'use start/stop codons as in NCBI (default: learned start/stop codons)'
  type: boolean
  inputBinding:
    prefix: --ncbicode
- id: al_arab
  doc: Use the hmmer based method of Al Arab et al. 2016. This will consider the evalue,
    ncbicode, fragovl, fragfac
  type: boolean
  inputBinding:
    prefix: --alarab
- id: old_stst
  doc: Use the old start/stop prediction method of MITOS1
  type: boolean
  inputBinding:
    prefix: --oldstst
- id: loc_and_glo_c
  doc: 'run mitfi in glocal and local mode (default: local only)'
  type: boolean
  inputBinding:
    prefix: --locandgloc
- id: nc_ev
  doc: evalue to use for inferal fast mode
  type: string
  inputBinding:
    prefix: --ncev
- id: sensitive
  doc: use infernals sensitive mode only
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: max_trna_ovl
  doc: allow tRNA overlap of up to X nt for mitfi
  type: string
  inputBinding:
    prefix: --maxtrnaovl
- id: max_rrna_ovl
  doc: allow rRNA overlap of up to X nt for mitfi
  type: string
  inputBinding:
    prefix: --maxrrnaovl
- id: debug
  doc: print debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: json
  doc: a JSON file with parameters. then outdir is the only other argument needed.
  type: string
  inputBinding:
    prefix: --json
outputs: []
cwlVersion: v1.1
baseCommand:
- runmitos.py
