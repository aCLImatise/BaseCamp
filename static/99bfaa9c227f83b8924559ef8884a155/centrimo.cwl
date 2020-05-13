class: CommandLineTool
id: centrimo.cwl
inputs:
- id: o
  doc: "output directory; default: 'centrimo_out'"
  type: string
  inputBinding:
    prefix: --o
- id: oc
  doc: "allow overwriting; default: 'centrimo_out'"
  type: string
  inputBinding:
    prefix: --oc
- id: neg
  doc: plot motif distributions in this set as well in the <sequence file> (positive
    sequences) and compute the relative enrichment
  type: string
  inputBinding:
    prefix: --neg
- id: x_alph
  doc: name of the file containing a custom alphabet, which specifies that motifs
    should be converted;
  type: string
  inputBinding:
    prefix: --xalph
- id: b_file
  doc: '0-order background frequency model for PWMs; default: base frequencies in
    input sequences'
  type: string
  inputBinding:
    prefix: --bfile
- id: motif_pseudo
  doc: 'pseudo-count to use creating PWMs; default: 5'
  type: string
  inputBinding:
    prefix: --motif-pseudo
- id: inc
  doc: 'name pattern to select as motif; may be repeated; default: all motifs are
    used'
  type: string
  inputBinding:
    prefix: --inc
- id: exc
  doc: 'name pattern to exclude as motif; may be repeated; default: all motifs are
    used'
  type: string
  inputBinding:
    prefix: --exc
- id: seq_len
  doc: 'use sequences with this length; default: use sequences with the same length
    as the first'
  type: long
  inputBinding:
    prefix: --seqlen
- id: score
  doc: 'score threshold for PWMs, in bits; sequences without a site with score >=
    <S> are ignored; default: 0.1'
  type: string
  inputBinding:
    prefix: --score
- id: use_lo_fraction
  doc: score threshold <S> is fraction of maximum log-odds
  type: boolean
  inputBinding:
    prefix: --use-lo-fraction
- id: use_p_values
  doc: use p-values instead of PWM scores
  type: boolean
  inputBinding:
    prefix: --use-pvalues
- id: norc
  doc: do not scan with the reverse complement motif
  type: boolean
  inputBinding:
    prefix: --norc
- id: sep
  doc: scan separately with reverse complement motif; (implies --norc)
  type: boolean
  inputBinding:
    prefix: --sep
- id: flip
  doc: "'flip' sequences so that matches on the  reverse strand are 'reflected' around\
    \ center; default: do not flip sequences"
  type: boolean
  inputBinding:
    prefix: --flip
- id: optimize_score
  doc: "search for optimized score above the threshold given by '--score' argument.\
    \ Slow computation due to multiple tests. default: use fixed score threshold"
  type: boolean
  inputBinding:
    prefix: --optimize-score
- id: max_reg
  doc: 'maximum width of any region to consider; default: use the sequence length'
  type: long
  inputBinding:
    prefix: --maxreg
- id: min_reg
  doc: 'minimum width of any region to consider; must be less than <maxreg>; default:
    1 bp'
  type: long
  inputBinding:
    prefix: --minreg
- id: local
  doc: 'compute the enrichment of all regions; default: enrichment of central regions
    only'
  type: boolean
  inputBinding:
    prefix: --local
- id: cd
  doc: 'distance to sequence center enrichment; default: region enrichment'
  type: boolean
  inputBinding:
    prefix: --cd
- id: e_thresh
  doc: 'evalue threshold for including in results; default: 10'
  type: string
  inputBinding:
    prefix: --ethresh
- id: desc
  doc: 'include the description in the output; default: no description'
  type: string
  inputBinding:
    prefix: --desc
- id: d_file
  doc: 'use the file content as the description; default: no descriptionn'
  type: string
  inputBinding:
    prefix: --dfile
- id: no_seq
  doc: 'do not store sequence IDs in HTML output; default: IDs are stored in the HTML
    output'
  type: boolean
  inputBinding:
    prefix: --noseq
- id: verbosity
  doc: '[1|2|3|4]    verbosity of output: 1 (quiet) - 4 (dump); default: 2'
  type: boolean
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- centrimo
