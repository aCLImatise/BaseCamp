class: CommandLineTool
id: PhyloCSF.cwl
inputs:
- id: in_strategy
  doc: "|fixed|omega\nevaluation strategy (default mle)"
  type: string?
  inputBinding:
    prefix: --strategy
- id: in_files
  doc: "input list(s) of alignment filenames instead of\nindividual alignment(s)"
  type: boolean?
  inputBinding:
    prefix: --files
- id: in_remove_ref_gaps
  doc: "automatically remove any alignment columns that are\ngapped in the reference\
    \ sequence (nucleotide columns\nare removed individually; be careful about reading\n\
    frame). By default, it is an error for the reference\nsequence to contain gaps"
  type: boolean?
  inputBinding:
    prefix: --removeRefGaps
- id: in_species
  doc: ",Species2,...\nhint that only this subset of species will be used in\nany\
    \ of the alignments; this does not change the\ncalculation mathematically, but\
    \ can speed it up"
  type: long?
  inputBinding:
    prefix: --species
- id: in_fone
  doc: "|3|6, --frames=1|3|6\nhow many reading frames to search (default 1)"
  type: boolean?
  inputBinding:
    prefix: -f1
- id: in_orf
  doc: "|ATGStop|StopStop|StopStop3|ToFirstStop|FromLastStop|ToOrFromStop\nsearch\
    \ for ORFs (default AsIs)"
  type: long?
  inputBinding:
    prefix: --orf
- id: in_min_codons
  doc: "minimum ORF length for searching over ORFs (default 25\ncodons)"
  type: long?
  inputBinding:
    prefix: --minCodons
- id: in_all_scores
  doc: report scores of all regions evaluated, not just the
  type: boolean?
  inputBinding:
    prefix: --allScores
- id: in_bls
  doc: "include alignment branch length score (BLS) for the\nreported region in output"
  type: boolean?
  inputBinding:
    prefix: --bls
- id: in_anc_comp
  doc: include ancestral sequence composition score in output
  type: boolean?
  inputBinding:
    prefix: --ancComp
- id: in_dna
  doc: "include DNA sequence in output, the part of the\nreference (first) sequence\
    \ whose score is reported"
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_aa
  doc: include amino acid translation in output
  type: boolean?
  inputBinding:
    prefix: --aa
- id: in_debug
  doc: print extra information about parameters and errors
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_max
  doc: -pINT               search frames/ORFs using up to p parallel subprocesses
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- PhyloCSF
