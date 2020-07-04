class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gimme_scan.cwl
inputs:
- id: genome
  doc: Genome
  type: string
  inputBinding:
    prefix: --genome
- id: pfm_file
  doc: 'PFM file with motifs (default: gimme.vertebrate.v5.0.pfm)'
  type: string
  inputBinding:
    prefix: --pfmfile
- id: _fpr_fpr
  doc: ', --fpr            FPR for motif scanning (default 0.01)'
  type: boolean
  inputBinding:
    prefix: -f
- id: _bgfile_background
  doc: ', --bgfile         background file for threshold'
  type: boolean
  inputBinding:
    prefix: -B
- id: _cutoff_motif
  doc: ', --cutoff         motif score cutoff or file with cutoffs'
  type: boolean
  inputBinding:
    prefix: -c
- id: n_report
  doc: report the N best matches
  type: string
  inputBinding:
    prefix: --nreport
- id: norc
  doc: don't scan reverse complement (- strand)
  type: boolean
  inputBinding:
    prefix: --norc
- id: bed
  doc: output bed format
  type: boolean
  inputBinding:
    prefix: --bed
- id: table
  doc: output counts in tabular format
  type: boolean
  inputBinding:
    prefix: --table
- id: score_table
  doc: output maximum score in tabular format
  type: boolean
  inputBinding:
    prefix: --score_table
- id: zscore
  doc: convert pfm logodds score to z-score
  type: boolean
  inputBinding:
    prefix: --zscore
- id: gc
  doc: use GC frequency normalized z-score
  type: boolean
  inputBinding:
    prefix: --gc
- id: n_threads
  doc: Number of threads (default 12)
  type: long
  inputBinding:
    prefix: --nthreads
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: input_file
  doc: inputfile (FASTA, BED, regions)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- scan
