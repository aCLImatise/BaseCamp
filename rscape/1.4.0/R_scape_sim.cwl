class: CommandLineTool
id: R_scape_sim.cwl
inputs:
- id: msa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: dna
  doc: ': use DNA alphabet'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': use RNA alphabet'
  type: boolean
  inputBinding:
    prefix: --rna
- id: amino
  doc: ': use protein alphabet'
  type: boolean
  inputBinding:
    prefix: --amino
- id: naive
  doc: ': naive simulation: independent positions'
  type: boolean
  inputBinding:
    prefix: --naive
- id: rn_ass
  doc: ': simulation according to a RNA secondary structure'
  type: boolean
  inputBinding:
    prefix: --rnass
- id: potts
  doc: ': Metropolis-Hastins for a potts model'
  type: boolean
  inputBinding:
    prefix: --potts
- id: potts_file
  doc: ': read potts params from file <f>'
  type: string
  inputBinding:
    prefix: --pottsfile
- id: cnt_maxd
  doc: ': max distance for contact definition'
  type: string
  inputBinding:
    prefix: --cntmaxD
- id: pdb_file
  doc: ': read contacts from pdbfile <f>'
  type: string
  inputBinding:
    prefix: --pdbfile
- id: pott_sigma
  doc: ': if sampling param from a N(0,sigma)'
  type: string
  inputBinding:
    prefix: --pottsigma
- id: ptp_gauss
  doc: ': potts param sampled from a Gaussian distribution'
  type: boolean
  inputBinding:
    prefix: --ptpgauss
- id: ptp_file
  doc: ': potts param from file pottsfile'
  type: boolean
  inputBinding:
    prefix: --ptpfile
- id: potts
  doc: ': potts param from pdb contact file'
  type: boolean
  inputBinding:
    prefix: --potts
- id: l
  doc: ': length of the alignment'
  type: string
  inputBinding:
    prefix: -L
- id: n
  doc: ': number of sequences in the simulated msa, N=0 for use all'
  type: string
  inputBinding:
    prefix: -N
- id: abl
  doc: ': tree average branch length in number of changes per site'
  type: string
  inputBinding:
    prefix: --abl
- id: at_bl
  doc: ': tree average total branch length in number of changes per site'
  type: string
  inputBinding:
    prefix: --atbl
- id: no_indels
  doc: ': produces ungapped alignments'
  type: boolean
  inputBinding:
    prefix: --noindels
- id: eq_branch
  doc: ': make all branch lengths equal size'
  type: boolean
  inputBinding:
    prefix: --eqbranch
- id: star
  doc: ': star topology'
  type: boolean
  inputBinding:
    prefix: --star
- id: rand
  doc: ': independent sequences'
  type: boolean
  inputBinding:
    prefix: --rand
- id: given
  doc: ': given msa topology'
  type: boolean
  inputBinding:
    prefix: --given
- id: sim
  doc: ': simulated topology'
  type: boolean
  inputBinding:
    prefix: --sim
- id: uses_q
  doc: ': sq from the origional msa used as root (default random)'
  type: string
  inputBinding:
    prefix: --usesq
- id: evo_model
  doc: ': evolutionary model used'
  type: string
  inputBinding:
    prefix: --evomodel
- id: ribo_file
  doc: ': read ribosum structure from file <f>'
  type: string
  inputBinding:
    prefix: --ribofile
- id: mx
  doc: ': substitution rate matrix choice (of some built-in matrices)'
  type: string
  inputBinding:
    prefix: --mx
- id: outdir
  doc: ': specify a directory for all output files'
  type: string
  inputBinding:
    prefix: --outdir
- id: o
  doc: ': send output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: dna
  doc: ': use DNA alphabet'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': use RNA alphabet'
  type: boolean
  inputBinding:
    prefix: --rna
- id: amino
  doc: ': use protein alphabet'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_format
  doc: ': specify format'
  type: string
  inputBinding:
    prefix: --informat
- id: one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean
  inputBinding:
    prefix: --onemsa
- id: f
  doc: ': filter out seqs <x*seq_cons residues'
  type: string
  inputBinding:
    prefix: -F
- id: i
  doc: ': require seqs to have < <x> id'
  type: string
  inputBinding:
    prefix: -I
- id: i
  doc: ': require seqs to have >= <x> id'
  type: string
  inputBinding:
    prefix: -i
- id: gap_thresh
  doc: ': keep columns with < <x> fraction of gaps'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: mini_d
  doc: ': minimum avgid of the given alignment'
  type: string
  inputBinding:
    prefix: --minid
- id: max_id
  doc: ': maximum avgid of the given alignment'
  type: string
  inputBinding:
    prefix: --maxid
- id: to_l
  doc: ': tolerance'
  type: string
  inputBinding:
    prefix: --tol
- id: seed
  doc: ': set RNG seed to <n>'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- R-scape-sim
