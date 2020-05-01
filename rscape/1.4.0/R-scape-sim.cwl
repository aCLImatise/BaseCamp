#!/usr/bin/env cwl-runner

baseCommand:
- R-scape-sim
class: CommandLineTool
cwlVersion: v1.0
id: r-scape-sim
inputs:
- doc: ''
  id: msa
  inputBinding:
    position: 0
  type: string
- doc: ': be verbose'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': use DNA alphabet'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': use RNA alphabet'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': use protein alphabet'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': naive simulation: independent positions'
  id: naive
  inputBinding:
    prefix: --naive
  type: boolean
- doc: ': simulation according to a RNA secondary structure'
  id: rn_ass
  inputBinding:
    prefix: --rnass
  type: boolean
- doc: ': Metropolis-Hastins for a potts model'
  id: potts
  inputBinding:
    prefix: --potts
  type: boolean
- doc: ': read potts params from file <f>'
  id: potts_file
  inputBinding:
    prefix: --pottsfile
  type: string
- doc: ': max distance for contact definition'
  id: cnt_maxd
  inputBinding:
    prefix: --cntmaxD
  type: string
- doc: ': read contacts from pdbfile <f>'
  id: pdb_file
  inputBinding:
    prefix: --pdbfile
  type: string
- doc: ': if sampling param from a N(0,sigma)'
  id: pott_sigma
  inputBinding:
    prefix: --pottsigma
  type: string
- doc: ': potts param sampled from a Gaussian distribution'
  id: ptp_gauss
  inputBinding:
    prefix: --ptpgauss
  type: boolean
- doc: ': potts param from file pottsfile'
  id: ptp_file
  inputBinding:
    prefix: --ptpfile
  type: boolean
- doc: ': potts param from pdb contact file'
  id: potts
  inputBinding:
    prefix: --potts
  type: boolean
- doc: ': length of the alignment'
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: ': number of sequences in the simulated msa, N=0 for use all'
  id: n
  inputBinding:
    prefix: -N
  type: string
- doc: ': tree average branch length in number of changes per site'
  id: abl
  inputBinding:
    prefix: --abl
  type: string
- doc: ': tree average total branch length in number of changes per site'
  id: at_bl
  inputBinding:
    prefix: --atbl
  type: string
- doc: ': produces ungapped alignments'
  id: no_indels
  inputBinding:
    prefix: --noindels
  type: boolean
- doc: ': make all branch lengths equal size'
  id: eq_branch
  inputBinding:
    prefix: --eqbranch
  type: boolean
- doc: ': star topology'
  id: star
  inputBinding:
    prefix: --star
  type: boolean
- doc: ': independent sequences'
  id: rand
  inputBinding:
    prefix: --rand
  type: boolean
- doc: ': given msa topology'
  id: given
  inputBinding:
    prefix: --given
  type: boolean
- doc: ': simulated topology'
  id: sim
  inputBinding:
    prefix: --sim
  type: boolean
- doc: ': sq from the origional msa used as root (default random)'
  id: uses_q
  inputBinding:
    prefix: --usesq
  type: string
- doc: ': evolutionary model used'
  id: evo_model
  inputBinding:
    prefix: --evomodel
  type: string
- doc: ': read ribosum structure from file <f>'
  id: ribo_file
  inputBinding:
    prefix: --ribofile
  type: string
- doc: ': substitution rate matrix choice (of some built-in matrices)'
  id: mx
  inputBinding:
    prefix: --mx
  type: string
- doc: ': specify a directory for all output files'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: ': send output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': use DNA alphabet'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': use RNA alphabet'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': use protein alphabet'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': specify format'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': if file has more than one msa, analyze only the first one'
  id: one_msa
  inputBinding:
    prefix: --onemsa
  type: boolean
- doc: ': filter out seqs <x*seq_cons residues'
  id: f
  inputBinding:
    prefix: -F
  type: string
- doc: ': require seqs to have < <x> id'
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: ': require seqs to have >= <x> id'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': keep columns with < <x> fraction of gaps'
  id: gap_thresh
  inputBinding:
    prefix: --gapthresh
  type: string
- doc: ': minimum avgid of the given alignment'
  id: mini_d
  inputBinding:
    prefix: --minid
  type: string
- doc: ': maximum avgid of the given alignment'
  id: max_id
  inputBinding:
    prefix: --maxid
  type: string
- doc: ': tolerance'
  id: to_l
  inputBinding:
    prefix: --tol
  type: string
- doc: ': set RNG seed to <n>'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
