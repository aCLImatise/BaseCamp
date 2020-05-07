class: CommandLineTool
id: PhyloCSF.cwl
inputs:
- id: files
  doc: input list(s) of alignment filenames instead of individual alignment(s)
  type: boolean
  inputBinding:
    prefix: --files
- id: remove_ref_gaps
  doc: automatically remove any alignment columns that are gapped in the reference
    sequence (nucleotide columns are removed individually; be careful about reading
    frame). By default, it is an error for the reference sequence to contain gaps
  type: boolean
  inputBinding:
    prefix: --removeRefGaps
- id: species
  doc: ',Species2,... hint that only this subset of species will be used in any of
    the alignments; this does not change the calculation mathematically, but can speed
    it up'
  type: string
  inputBinding:
    prefix: --species
- id: f1
  doc: '|3|6, --frames=1|3|6 how many reading frames to search (default 1)'
  type: boolean
  inputBinding:
    prefix: -f1
- id: orf
  doc: '|ATGStop|StopStop|StopStop3|ToFirstStop|FromLastStop|ToOrFromStop search for
    ORFs (default AsIs)'
  type: string
  inputBinding:
    prefix: --orf
- id: min_codons
  doc: minimum ORF length for searching over ORFs (default 25 codons)
  type: long
  inputBinding:
    prefix: --minCodons
- id: all_scores
  doc: report scores of all regions evaluated, not just the max
  type: boolean
  inputBinding:
    prefix: --allScores
- id: pint
  doc: search frames/ORFs using up to p parallel subprocesses
  type: boolean
  inputBinding:
    prefix: -pINT
- id: bls
  doc: include alignment branch length score (BLS) for the reported region in output
  type: boolean
  inputBinding:
    prefix: --bls
- id: anc_comp
  doc: include ancestral sequence composition score in output
  type: boolean
  inputBinding:
    prefix: --ancComp
- id: dna
  doc: include DNA sequence in output, the part of the reference (first) sequence
    whose score is reported
  type: boolean
  inputBinding:
    prefix: --dna
- id: aa
  doc: include amino acid translation in output
  type: boolean
  inputBinding:
    prefix: --aa
- id: debug
  doc: print extra information about parameters and errors
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- PhyloCSF
