class: CommandLineTool
id: taco_run.cwl
inputs:
- id: output_dir
  doc: directory where output files will be stored (if already exists then --resume
    must be specified) [default=output]
  type: string
  inputBinding:
    prefix: --output-dir
- id: num_processes
  doc: Run TACO in parallel with N processes [default=1]
  type: string
  inputBinding:
    prefix: --num-processes
- id: verbose
  doc: Enabled detailed logging (for debugging)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: resume
  doc: Resumes an existing run that may have ended prematurely. Specify the location
    of the run using the -o/--output-dir option.
  type: boolean
  inputBinding:
    prefix: --resume
- id: assemble
  doc: Assemble transfrags produced by a previous TACO run, bypassing the GTF aggregation
    step. Accepts a taco- formatted BED file.
  type: string
  inputBinding:
    prefix: --assemble
- id: gtf_expr_attr
  doc: GTF attribute field containing expression [default=FPKM]
  type: string
  inputBinding:
    prefix: --gtf-expr-attr
- id: filter_min_length
  doc: Filter input transfrags with length < N prior to assembly [default=200]
  type: string
  inputBinding:
    prefix: --filter-min-length
- id: filter_min_expr
  doc: Filter input transfrags with expression (FPKM/TPM) < X prior to assembly [default=0.5]
  type: string
  inputBinding:
    prefix: --filter-min-expr
- id: filter_splice_jun_cs
  doc: Filter input transfrags that possess non-canonical splice motifs prior to assembly.
    Splice motifs are GTAG, GCAG, and ATAC are allowed [default=False]. Requires genome
    sequence to be specified using --ref- genome-fasta.
  type: boolean
  inputBinding:
    prefix: --filter-splice-juncs
- id: add_splice_motif
  doc: Add additional splice junction motifs to permit when using the --filter-splice-juncs
    flag. Use this flag multiple times for each additional junction motif. Motif must
    be 4 bases.
  type: string
  inputBinding:
    prefix: --add-splice-motif
- id: ref_genome_fast_a
  doc: Reference genome sequence in FASTA format needed to assess splice junction
    motif sequences. Use in conjunction with --filter-splice-juncs.
  type: string
  inputBinding:
    prefix: --ref-genome-fasta
- id: isoform_frac
  doc: Report transcript isoforms with expression fraction >= FRAC (0.0-1.0) relative
    to the major isoform within each gene [default=0.05]
  type: string
  inputBinding:
    prefix: --isoform-frac
- id: max_isoforms
  doc: Maximum isoforms to report for each gene [default=0]
  type: string
  inputBinding:
    prefix: --max-isoforms
- id: assemble_un_stranded
  doc: Enable assembly of unstranded transfrags [default=False]
  type: boolean
  inputBinding:
    prefix: --assemble-unstranded
- id: no_assemble_un_stranded
  doc: Disable assembly of unstranded transfrags
  type: boolean
  inputBinding:
    prefix: --no-assemble-unstranded
- id: change_point
  doc: Enable change point detection [default=True]
  type: boolean
  inputBinding:
    prefix: --change-point
- id: no_change_point
  doc: Disable change point detection
  type: boolean
  inputBinding:
    prefix: --no-change-point
- id: change_point_p_value
  doc: Mann-Whitney-U p-value threshold for calling change points [default=0.01]
  type: double
  inputBinding:
    prefix: --change-point-pvalue
- id: change_point_fold_change
  doc: Fold change threshold between the means of two putative segments on either
    side of a change point. A value of 0.0 is the most strict setting, effectively
    calling no change points. Conversely, setting the value to 1.0 calls allchange
    points [default=0.85]
  type: double
  inputBinding:
    prefix: --change-point-fold-change
- id: change_point_trim
  doc: Trim transfrags around change points [default=True]
  type: boolean
  inputBinding:
    prefix: --change-point-trim
- id: no_change_point_trim
  doc: Disable trimming around change points
  type: boolean
  inputBinding:
    prefix: --no-change-point-trim
- id: path_kmax
  doc: Limit optimization for choosing parameter k for path graph (DeBruijn graph)
    to k <= kmax [default=0]
  type: string
  inputBinding:
    prefix: --path-kmax
- id: path_frac
  doc: dynamic programming algorithm will stop finding suboptimal paths when path
    expression drops below a fraction X (0.0-1.0) of the total locus expression [default=0.0]
  type: string
  inputBinding:
    prefix: --path-frac
- id: max_paths
  doc: dynamic programming algorithm will stop after finding N paths [default=0]
  type: string
  inputBinding:
    prefix: --max-paths
outputs: []
cwlVersion: v1.1
baseCommand:
- taco_run
