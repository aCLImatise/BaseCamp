class: CommandLineTool
id: moods_dna.py.cwl
inputs:
- id: verbosity
  doc: verbose (-vv, -vvv for more)
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: matrices
  doc: matrix files (count/frequency, will be converted to PWM before matching)
  type: string[]
  inputBinding:
    prefix: --matrices
- id: score_matrices
  doc: matrix files (PWM/other score matrix, will be matched directly)
  type: string[]
  inputBinding:
    prefix: --score-matrices
- id: sequences
  doc: sequence files
  type: string[]
  inputBinding:
    prefix: --sequences
- id: p_value
  doc: compute threshold from p-value
  type: string
  inputBinding:
    prefix: --p-value
- id: threshold
  doc: use specified absolute threshold
  type: string
  inputBinding:
    prefix: --threshold
- id: best_hits
  doc: return at least the specified amount of best matches
  type: string
  inputBinding:
    prefix: --best-hits
- id: outfile
  doc: output to file instead of standard output
  type: string
  inputBinding:
    prefix: --outfile
- id: sep
  doc: set field separator in out (default ",")
  type: string
  inputBinding:
    prefix: --sep
- id: no_rc
  doc: disable matching versus reverse complement strand
  type: boolean
  inputBinding:
    prefix: --no-rc
- id: no_snps
  doc: ignore IUPAC symbols coding multiple nucleotides
  type: boolean
  inputBinding:
    prefix: --no-snps
- id: batch
  doc: do not recompute thresholds from p-values for each sequence separately (recommended
    when dealing with lots of short sequences)
  type: boolean
  inputBinding:
    prefix: --batch
- id: bg
  doc: pC pG pT      background distribution for computing thresholds from p-value
    with --batch (default is 0.25 for all alleles)
  type: string
  inputBinding:
    prefix: --bg
- id: ps
  doc: total pseudocount added to each matrix column in log- odds conversion (default
    = 0.01)
  type: string
  inputBinding:
    prefix: --ps
- id: log_base
  doc: logarithm base for log-odds conversion (default natural logarithm)
  type: string
  inputBinding:
    prefix: --log-base
- id: lo_bg
  doc: pC pG pT   background distribution for log-odds conversion (default is 0.25
    for all alleles)
  type: string
  inputBinding:
    prefix: --lo-bg
- id: threshold_precision
  doc: specify the precision used for computing the thresholds from p-values (default
    = 2000.0)
  type: string
  inputBinding:
    prefix: --threshold-precision
outputs: []
cwlVersion: v1.1
baseCommand:
- moods-dna.py
