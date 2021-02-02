class: CommandLineTool
id: rsat_dyad_analysis.cwl
inputs:
- id: in_sequences
  doc: pattern-discovery
  type: string
  inputBinding:
    position: 0
- id: in_oligonucleotide_dot
  doc: Sig value higher than 0
  type: string
  inputBinding:
    position: 0
- id: in_then
  doc: exp(dyad) = exp(oligo1)*exp(oligo2)
  type: string
  inputBinding:
    position: 0
- id: in_x_one
  doc: P(X>=x) =  1 - SUM P(j)
  type: long
  inputBinding:
    position: 0
- id: in_accuracy_dot
  doc: 'Interpretation: the P-value (Pval) represents the nominal risk'
  type: string
  inputBinding:
    position: 0
- id: in_over_slash_under_representation
  doc: "By default, the program calculates the P-value on the right\ntail of the probability\
    \ distribution, which represents the\nprobability to observe at least x occurrences\
    \ by chance:\nT\nP(X>=x) = SUM P(X=i)\ni=x\nWith the option -under, the P-value\
    \ is calculated on the left\ntail of the distribution, which represents the probability\
    \ of\nhaving at most x occurrences:\nx-1\nP(X<=x) =  SUM P(X=i)\ni=0\nThe option\
    \ -under does not affect the other statistics\n(zscore, loglikelihood). For z-score,\
    \ the negative values\nindicate under-representation.\nWith the option -two_tails,\
    \ the P-value is calculated on\neither the left or the right-tail of the distribution,\n\
    depending on the observed/expected comparison:\nif k >= exp_occ, right tail (over-representation)\n\
    if k < exp_occ, left tail (under-representation)"
  type: string
  inputBinding:
    position: 0
- id: in_e_value
  doc: "The probability of occurrence by itself is not fully\ninformative, because\
    \ the threshold must be adapted depending\non the number of patterns considered.\
    \ Indeed, a simple\nhexanucleotide analysis amounts to consider 4096\nhypotheses.\n\
    The E-value (Eval) represents the expected number of patterns\nwhich would be\
    \ returned at random for a given threshold of\nnominal P-value.\nEval = NPO *\
    \ P(X>=x)\nwhere NPO is the number of possible oligomers of the chosen\nlength\
    \ (eg 4096 for hexanucleotides).\nNote that when searches are performed on both\
    \ strands, NPO is\ncorrected for the fact that non-palindromic patterns are\n\
    grouped by pairs (for example, there are 4096 possible\nhexanucleotides when the\
    \ count is performed on a single\nstrand, but only 2080 when the count is performed\
    \ on both\nstrands).\nInterpretation: the E-value (Eval) represents the expected\n\
    number of false positives, for a given threshold of P-value\n(Pval)."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- dyad-analysis
