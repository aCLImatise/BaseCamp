class: CommandLineTool
id: moods_dna.py.cwl
inputs:
- id: in_verbosity
  doc: verbose (-vv, -vvv for more)
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_matrices
  doc: "matrix files (count/frequency, will be converted to\nPWM before matching)"
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_score_matrices
  doc: "matrix files (PWM/other score matrix, will be matched\ndirectly)"
  type: string[]
  inputBinding:
    prefix: --score-matrices
- id: in_sequences
  doc: sequence files
  type: string[]
  inputBinding:
    prefix: --sequences
- id: in_p_value
  doc: compute threshold from p-value
  type: string?
  inputBinding:
    prefix: --p-value
- id: in_threshold
  doc: use specified absolute threshold
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_best_hits
  doc: return at least the specified amount of best matches
  type: string?
  inputBinding:
    prefix: --best-hits
- id: in_outfile
  doc: output to file instead of standard output
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_sep
  doc: set field separator in out (default ",")
  type: string?
  inputBinding:
    prefix: --sep
- id: in_no_rc
  doc: disable matching versus reverse complement strand
  type: boolean?
  inputBinding:
    prefix: --no-rc
- id: in_no_snps
  doc: ignore IUPAC symbols coding multiple nucleotides
  type: boolean?
  inputBinding:
    prefix: --no-snps
- id: in_batch
  doc: "do not recompute thresholds from p-values for each\nsequence separately (recommended\
    \ when dealing with\nlots of short sequences)"
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_bg
  doc: "pC pG pT      background distribution for computing thresholds from\np-value\
    \ with --batch (default is 0.25 for all alleles)"
  type: double?
  inputBinding:
    prefix: --bg
- id: in_ps
  doc: "total pseudocount added to each matrix column in log-\nodds conversion (default\
    \ = 0.01)"
  type: double?
  inputBinding:
    prefix: --ps
- id: in_log_base
  doc: "logarithm base for log-odds conversion (default\nnatural logarithm)"
  type: string?
  inputBinding:
    prefix: --log-base
- id: in_lo_bg
  doc: "pC pG pT   background distribution for log-odds conversion\n(default is 0.25\
    \ for all alleles)"
  type: double?
  inputBinding:
    prefix: --lo-bg
- id: in_threshold_precision
  doc: "specify the precision used for computing the\nthresholds from p-values (default\
    \ = 2000.0)\n"
  type: double?
  inputBinding:
    prefix: --threshold-precision
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output to file instead of standard output
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- moods-dna.py
