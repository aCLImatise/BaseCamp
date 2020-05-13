class: CommandLineTool
id: ama.cwl
inputs:
- id: s_dbg
  doc: Use Markov background model of order <order> derived from the sequence to compute
    its likelihood ratios; overrides --pvalues, --gcbins and --rma; <background file>
    is required unless --sdbg is given.
  type: string
  inputBinding:
    prefix: --sdbg
- id: motif
  doc: Use only the motif identified by <id>. This option may be repeated.
  type: string
  inputBinding:
    prefix: --motif
- id: motif_pseudo
  doc: 'The value <float> times the background frequency is added to the count of
    each letter when creating the likelihood  ratio matrix; default: 0.01'
  type: double
  inputBinding:
    prefix: --motif-pseudo
- id: norc
  doc: Disables the scanning of the reverse complement strand for complementable alphabets.
    The switch is set automatically for alphabets without complements.
  type: boolean
  inputBinding:
    prefix: --norc
- id: scoring
  doc: '[avg-odds|max-odds] Indicates whether the average or  the maximum odds should
    be calculated default: avg-odds'
  type: boolean
  inputBinding:
    prefix: --scoring
- id: rma
  doc: 'Scale motif scores to the range [0,1]. (Relative Motif Affinity). Motif scores
    are scaled by the maximum score achievable by that PWM; default: Motif scores
    are not normalized.'
  type: boolean
  inputBinding:
    prefix: --rma
- id: p_values
  doc: 'Print p-value of avg-odds score in cisml output. Ignored for max-odds scoring;
    default: P-values are not printed.'
  type: boolean
  inputBinding:
    prefix: --pvalues
- id: gc_bins
  doc: 'Compensate p-values for GC* content of each sequence using given number of  GC
    range bins. Recommended bins: 41. This option only works with complementable alphabets
    with exactly 2 complement pairs; default: P-values are based on frequencies in
    background file. * GC refers to any complement pair, not actually G and C except
    for the case of DNA.'
  type: string
  inputBinding:
    prefix: --gcbins
- id: cs
  doc: Enable combining sequences with same identifier by taking the average score
    and the Sidac corrected p-value.
  type: boolean
  inputBinding:
    prefix: --cs
- id: o_format
  doc: '[gff|cisml]   Output file format; default: cisml. Ignored if --o or --oc option
    used, and then CisML (.xml) and GFF (.txt) files are both output into the specified
    directory.'
  type: boolean
  inputBinding:
    prefix: --o-format
- id: o
  doc: Output all available formats to <directory>; give up if <directory> exists.
  type: Directory
  inputBinding:
    prefix: --o
- id: oc
  doc: Output all available formats to <directory>; If <directory> exists overwrite
    contents.
  type: Directory
  inputBinding:
    prefix: --oc
- id: verbosity
  doc: '[1|2|3|4]    Controls amount of screen output; default: 2'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: max_seq_length
  doc: 'Set the maximum length allowed for  input sequences; default: 250000000'
  type: long
  inputBinding:
    prefix: --max-seq-length
- id: last
  doc: Use only scores of (up to) last <n> sequence positions to compute AMA.
  type: long
  inputBinding:
    prefix: --last
outputs: []
cwlVersion: v1.1
baseCommand:
- ama
