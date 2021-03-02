class: CommandLineTool
id: runmitos.py.cwl
inputs:
- id: in_input
  doc: the input file
  type: File?
  inputBinding:
    prefix: --input
- id: in_fast_a
  doc: input fasta sequence
  type: string?
  inputBinding:
    prefix: --fasta
- id: in_code
  doc: the genetic code
  type: string?
  inputBinding:
    prefix: --code
- id: in_outdir
  doc: the directory where the output is written
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_linear
  doc: treat sequence as linear
  type: boolean?
  inputBinding:
    prefix: --linear
- id: in_refseq_ver
  doc: "directory containing the reference data (relative to\n--refdir)"
  type: Directory?
  inputBinding:
    prefix: --refseqver
- id: in_ref_dir
  doc: base directory containing the reference data
  type: Directory?
  inputBinding:
    prefix: --refdir
- id: in_prot
  doc: 'position of protein prediction in 1st round (0: skip)'
  type: long?
  inputBinding:
    prefix: --prot
- id: in_trna
  doc: 'position of tRNA prediction in 1st round (0: skip)'
  type: long?
  inputBinding:
    prefix: --trna
- id: in_rrna
  doc: 'position of rRNA prediction in 1st round (0: skip)'
  type: long?
  inputBinding:
    prefix: --rrna
- id: in_intron
  doc: 'position of intron prediction in 1st round (0: skip)'
  type: long?
  inputBinding:
    prefix: --intron
- id: in_or_il
  doc: 'position of OL prediction in 1st round (0: skip)'
  type: long?
  inputBinding:
    prefix: --oril
- id: in_or_ih
  doc: 'position of OH prediction in 1st round (0: skip)'
  type: long?
  inputBinding:
    prefix: --orih
- id: in_fi_nov_l
  doc: final overlap <= NRNT nucleotides
  type: string?
  inputBinding:
    prefix: --finovl
- id: in_circ_rot
  doc: 'cir circular: rotate mitogenome by DEG and DEG+180'
  type: long?
  inputBinding:
    prefix: --circrot
- id: in_best
  doc: annotate only the best copy of each feature
  type: boolean?
  inputBinding:
    prefix: --best
- id: in_frag_fac
  doc: "allow fragments to differ in quality/evalue by at most\na factor FACTOR. Ignored\
    \ if <= 0."
  type: long?
  inputBinding:
    prefix: --fragfac
- id: in_frag_ovl
  doc: allow query range overlaps up for FRACTION for
  type: string?
  inputBinding:
    prefix: --fragovl
- id: in_evalue
  doc: "discard BLAST hits with -1*log(e-value)<EVL (EVL < 1\nhas no effect)"
  type: long?
  inputBinding:
    prefix: --evalue
- id: in_cut_off
  doc: discard positions with quality <.5 of max
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_clip_fac
  doc: "overlapping features of the same name differing by at\nmost a factor of FACTOR\
    \ are clipped"
  type: string?
  inputBinding:
    prefix: --clipfac
- id: in_ncbi_code
  doc: "use start/stop codons as in NCBI (default: learned\nstart/stop codons)"
  type: boolean?
  inputBinding:
    prefix: --ncbicode
- id: in_al_arab
  doc: "Use the hmmer based method of Al Arab et al. 2016.\nThis will consider the\
    \ evalue, ncbicode, fragovl,\nfragfac"
  type: boolean?
  inputBinding:
    prefix: --alarab
- id: in_old_stst
  doc: Use the old start/stop prediction method of MITOS1
  type: boolean?
  inputBinding:
    prefix: --oldstst
- id: in_loc_and_glo_c
  doc: "run mitfi in glocal and local mode (default: local\nonly)"
  type: boolean?
  inputBinding:
    prefix: --locandgloc
- id: in_nc_ev
  doc: evalue to use for inferal fast mode
  type: string?
  inputBinding:
    prefix: --ncev
- id: in_sensitive
  doc: use infernals sensitive mode only
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_max_trna_ovl
  doc: allow tRNA overlap of up to X nt for mitfi
  type: string?
  inputBinding:
    prefix: --maxtrnaovl
- id: in_max_rrna_ovl
  doc: allow rRNA overlap of up to X nt for mitfi
  type: string?
  inputBinding:
    prefix: --maxrrnaovl
- id: in_debug
  doc: print debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_json
  doc: "a JSON file with parameters. then outdir is the only\nother argument needed."
  type: File?
  inputBinding:
    prefix: --json
- id: in_fragments
  doc: --noplots             do not create the plots.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: the directory where the output is written
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- runmitos.py
