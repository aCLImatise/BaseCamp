class: CommandLineTool
id: taco_run.cwl
inputs:
- id: in_output_dir
  doc: "directory where output files will be stored (if\nalready exists then --resume\
    \ must be specified)\n[default=output]"
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_num_processes
  doc: Run TACO in parallel with N processes [default=1]
  type: long
  inputBinding:
    prefix: --num-processes
- id: in_verbose
  doc: Enabled detailed logging (for debugging)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_resume
  doc: "Resumes an existing run that may have ended\nprematurely. Specify the location\
    \ of the run using the\n-o/--output-dir option."
  type: boolean
  inputBinding:
    prefix: --resume
- id: in_assemble
  doc: "Assemble transfrags produced by a previous TACO run,\nbypassing the GTF aggregation\
    \ step. Accepts a taco-\nformatted BED file."
  type: File
  inputBinding:
    prefix: --assemble
- id: in_gtf_expr_attr
  doc: "GTF attribute field containing expression\n[default=FPKM]"
  type: string
  inputBinding:
    prefix: --gtf-expr-attr
- id: in_filter_min_length
  doc: "Filter input transfrags with length < N prior to\nassembly [default=200]"
  type: long
  inputBinding:
    prefix: --filter-min-length
- id: in_filter_min_expr
  doc: "Filter input transfrags with expression (FPKM/TPM) < X\nprior to assembly\
    \ [default=0.5]"
  type: long
  inputBinding:
    prefix: --filter-min-expr
- id: in_filter_splice_jun_cs
  doc: "Filter input transfrags that possess non-canonical\nsplice motifs prior to\
    \ assembly. Splice motifs are\nGTAG, GCAG, and ATAC are allowed [default=False].\n\
    Requires genome sequence to be specified using --ref-\ngenome-fasta."
  type: boolean
  inputBinding:
    prefix: --filter-splice-juncs
- id: in_add_splice_motif
  doc: "Add additional splice junction motifs to permit when\nusing the --filter-splice-juncs\
    \ flag. Use this flag\nmultiple times for each additional junction motif.\nMotif\
    \ must be 4 bases."
  type: long
  inputBinding:
    prefix: --add-splice-motif
- id: in_ref_genome_fast_a
  doc: "Reference genome sequence in FASTA format needed to\nassess splice junction\
    \ motif sequences. Use in\nconjunction with --filter-splice-juncs."
  type: File
  inputBinding:
    prefix: --ref-genome-fasta
- id: in_isoform_frac
  doc: "Report transcript isoforms with expression fraction >=\nFRAC (0.0-1.0) relative\
    \ to the major isoform within\neach gene [default=0.05]"
  type: double
  inputBinding:
    prefix: --isoform-frac
- id: in_max_isoforms
  doc: Maximum isoforms to report for each gene [default=0]
  type: long
  inputBinding:
    prefix: --max-isoforms
- id: in_assemble_un_stranded
  doc: "Enable assembly of unstranded transfrags\n[default=False]"
  type: boolean
  inputBinding:
    prefix: --assemble-unstranded
- id: in_no_assemble_un_stranded
  doc: Disable assembly of unstranded transfrags
  type: boolean
  inputBinding:
    prefix: --no-assemble-unstranded
- id: in_change_point
  doc: Enable change point detection [default=True]
  type: boolean
  inputBinding:
    prefix: --change-point
- id: in_no_change_point
  doc: Disable change point detection
  type: boolean
  inputBinding:
    prefix: --no-change-point
- id: in_change_point_p_value
  doc: "Mann-Whitney-U p-value threshold for calling change\npoints [default=0.01]"
  type: long
  inputBinding:
    prefix: --change-point-pvalue
- id: in_change_point_fold_change
  doc: "Fold change threshold between the means of two\nputative segments on either\
    \ side of a change point. A\nvalue of 0.0 is the most strict setting, effectively\n\
    calling no change points. Conversely, setting the\nvalue to 1.0 calls allchange\
    \ points [default=0.85]"
  type: long
  inputBinding:
    prefix: --change-point-fold-change
- id: in_change_point_trim
  doc: Trim transfrags around change points [default=True]
  type: boolean
  inputBinding:
    prefix: --change-point-trim
- id: in_no_change_point_trim
  doc: Disable trimming around change points
  type: boolean
  inputBinding:
    prefix: --no-change-point-trim
- id: in_path_kmax
  doc: "Limit optimization for choosing parameter k for path\ngraph (DeBruijn graph)\
    \ to k <= kmax [default=0]"
  type: File
  inputBinding:
    prefix: --path-kmax
- id: in_path_frac
  doc: "dynamic programming algorithm will stop finding\nsuboptimal paths when path\
    \ expression drops below a\nfraction X (0.0-1.0) of the total locus expression\n\
    [default=0.0]"
  type: File
  inputBinding:
    prefix: --path-frac
- id: in_max_paths
  doc: "dynamic programming algorithm will stop after finding\nN paths [default=0]\n"
  type: long
  inputBinding:
    prefix: --max-paths
- id: in_sample_file
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "directory where output files will be stored (if\nalready exists then --resume\
    \ must be specified)\n[default=output]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- taco_run
