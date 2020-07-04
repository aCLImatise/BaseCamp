class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/R_scape.cwl
inputs:
- id: non_param
  doc: ': non parameteric correlate  [TRUE]'
  type: boolean
  inputBinding:
    prefix: --nonparam
- id: potts
  doc: ': potts couplings'
  type: boolean
  inputBinding:
    prefix: --potts
- id: dna
  doc: ': use DNA alphabet'
  type: boolean
  inputBinding:
    prefix: --dna
- id: use_rna_alphabet
  doc: ': use RNA alphabet'
  type: boolean
  inputBinding:
    prefix: --rna
- id: amino
  doc: ': use protein alphabet'
  type: boolean
  inputBinding:
    prefix: --amino
- id: pt_muh
  doc: ": potts regularization parameters for training hi's  [0.01]  (x>=0)"
  type: string
  inputBinding:
    prefix: --ptmuh
- id: pt_mue
  doc: ": potts regularization parameters for training eij's  [0.20]  (x>=0)"
  type: string
  inputBinding:
    prefix: --ptmue
- id: plm
  doc: ': potts option for training'
  type: boolean
  inputBinding:
    prefix: --PLM
- id: a_plm
  doc: ': potts option for training'
  type: boolean
  inputBinding:
    prefix: --APLM
- id: out_potts
  doc: ': write inferred potts parameters'
  type: boolean
  inputBinding:
    prefix: --outpotts
- id: gremlin
  doc: ': reproduce gremlin'
  type: boolean
  inputBinding:
    prefix: --gremlin
- id: out_msa
  doc: ': write actual msa used'
  type: boolean
  inputBinding:
    prefix: --outmsa
- id: out_tree
  doc: ': write phylogenetic tree used'
  type: boolean
  inputBinding:
    prefix: --outtree
- id: out_null
  doc: ': write null alignments'
  type: boolean
  inputBinding:
    prefix: --outnull
- id: all_branch
  doc: ': output msa with all branges'
  type: boolean
  inputBinding:
    prefix: --allbranch
- id: v_output
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: --voutput
- id: power
  doc: ': calculate empirical power curve'
  type: string
  inputBinding:
    prefix: --power
- id: double_subs
  doc: ': calculate power using double substitutions, default is single substitutions'
  type: boolean
  inputBinding:
    prefix: --doublesubs
- id: minh_loop
  doc: ': minimum hairpin loop length. If i-j is the closing pair: minhloop = j-1-1.
    Default is 0  (n>=0)'
  type: string
  inputBinding:
    prefix: --minhloop
- id: to_l
  doc: ': tolerance  [1e-6]'
  type: string
  inputBinding:
    prefix: --tol
- id: seed
  doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  type: string
  inputBinding:
    prefix: --seed
- id: pm_ass
  doc: ': pmass for censored histogram of cov scores  [0.0005]  (0<x<=1)'
  type: string
  inputBinding:
    prefix: --pmass
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: var_23
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: structural
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: covariation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: above
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: phylogenetic
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: expectation
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- R-scape
