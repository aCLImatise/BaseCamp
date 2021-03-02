class: CommandLineTool
id: iCount_args.cwl
inputs:
- id: in_annotation
  doc: '(-a): annotation, indexstar, mapstar'
  type: boolean?
  inputBinding:
    prefix: --annotation
- id: in_chromosomes
  doc: ': genome'
  type: boolean?
  inputBinding:
    prefix: --chromosomes
- id: in_digits
  doc: ': summary'
  type: boolean?
  inputBinding:
    prefix: --digits
- id: in_dist
  doc: ': clusters'
  type: boolean?
  inputBinding:
    prefix: --dist
- id: in_excluded_types
  doc: '(-e): annotate, summary'
  type: boolean?
  inputBinding:
    prefix: --excluded_types
- id: in_fdr
  doc: ': peaks'
  type: boolean?
  inputBinding:
    prefix: --fdr
- id: in_features
  doc: ': peaks'
  type: boolean?
  inputBinding:
    prefix: --features
- id: in_gap_th
  doc: ': xlsites'
  type: boolean?
  inputBinding:
    prefix: --gap_th
- id: in_genome
  doc: ': genome'
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_group_by
  doc: '(-g): xlsites, peaks'
  type: boolean?
  inputBinding:
    prefix: --group_by
- id: in_half_window
  doc: ': peaks'
  type: boolean?
  inputBinding:
    prefix: --half_window
- id: in_holesize_th
  doc: ': rnamaps'
  type: boolean?
  inputBinding:
    prefix: --holesize_th
- id: in_implicit_handling
  doc: ': rnamaps'
  type: boolean?
  inputBinding:
    prefix: --implicit_handling
- id: in_mapq_th
  doc: ': xlsites, rnamaps'
  type: boolean?
  inputBinding:
    prefix: --mapq_th
- id: in_merge_features
  doc: ': peaks'
  type: boolean?
  inputBinding:
    prefix: --merge_features
- id: in_minimum_length
  doc: '(-ml): demultiplex, cutadapt'
  type: boolean?
  inputBinding:
    prefix: --minimum_length
- id: in_mismatches
  doc: '(-mis): demultiplex, mapstar, xlsites, rnamaps'
  type: boolean?
  inputBinding:
    prefix: --mismatches
- id: in_multimax
  doc: ': mapstar, xlsites'
  type: boolean?
  inputBinding:
    prefix: --multimax
- id: in_out_dir
  doc: '(-od): annotation, genome, demultiplex, examples'
  type: boolean?
  inputBinding:
    prefix: --out_dir
- id: in_overhang
  doc: ': indexstar'
  type: boolean?
  inputBinding:
    prefix: --overhang
- id: in_overhang_min
  doc: ': indexstar'
  type: boolean?
  inputBinding:
    prefix: --overhang_min
- id: in_perms
  doc: '(-p): peaks'
  type: boolean?
  inputBinding:
    prefix: --perms
- id: in_prefix
  doc: ': demultiplex'
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_qual_trim
  doc: ': cutadapt'
  type: boolean?
  inputBinding:
    prefix: --qual_trim
- id: in_quant
  doc: ': xlsites'
  type: boolean?
  inputBinding:
    prefix: --quant
- id: in_release
  doc: '(-r): species, annotation, genome'
  type: boolean?
  inputBinding:
    prefix: --release
- id: in_report_progress
  doc: '(-prog): segment, xlsites, peaks'
  type: boolean?
  inputBinding:
    prefix: --report_progress
- id: in_rnd_seed
  doc: '(-rnd): peaks'
  type: boolean?
  inputBinding:
    prefix: --rnd_seed
- id: in_scores
  doc: ': peaks'
  type: boolean?
  inputBinding:
    prefix: --scores
- id: in_segmentation
  doc: ': xlsites'
  type: boolean?
  inputBinding:
    prefix: --segmentation
- id: in_slop
  doc: ': clusters'
  type: boolean?
  inputBinding:
    prefix: --slop
- id: in_subtype
  doc: ': annotate, summary'
  type: boolean?
  inputBinding:
    prefix: --subtype
- id: in_threads
  doc: ': indexstar, mapstar'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_types_length_file
  doc: ': summary'
  type: boolean?
  inputBinding:
    prefix: --types_length_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- args
