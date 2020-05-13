class: CommandLineTool
id: compareMotifs.pl.cwl
inputs:
- id: stat
  doc: '<freqError|absDifference|correlation> (Stat used to compute matrix similarity.
    default: correlation)'
  type: boolean
  inputBinding:
    prefix: -stat
- id: bits
  doc: (scale logos to bit content, default present nucleotide percentage)
  type: boolean
  inputBinding:
    prefix: -bits
- id: rna
  doc: (output RNA motifs, use RNA motif/miRNA database for comparison)
  type: boolean
  inputBinding:
    prefix: -rna
- id: norev_opp
  doc: (do not check for matches on reverse strand)
  type: boolean
  inputBinding:
    prefix: -norevopp
- id: reduced_motifs
  doc: (will remove redundant motifs, output unique ones, and then quit)
  type: string
  inputBinding:
    prefix: -reducedMotifs
- id: matrix
  doc: (will compute all pairwise similarity scores to matrix, then quit)
  type: string
  inputBinding:
    prefix: -matrix
- id: no_facts
  doc: (leave out the humor)
  type: boolean
  inputBinding:
    prefix: -nofacts
- id: dbview
  doc: (internal option )
  type: boolean
  inputBinding:
    prefix: -dbview
- id: db_table
  doc: (information to use in dbview, internal option)
  type: string
  inputBinding:
    prefix: -dbTable
- id: cpu
  doc: <#> (number of CPUs to use)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: basic
  doc: (don't compare to known motifs or print similar motifs)
  type: boolean
  inputBinding:
    prefix: -basic
- id: seq_logo
  doc: (revert to using seqlogo/weblogo/ghostscript, by default uses SVG now)
  type: boolean
  inputBinding:
    prefix: -seqlogo
outputs: []
cwlVersion: v1.1
baseCommand:
- compareMotifs.pl
