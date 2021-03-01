class: CommandLineTool
id: R_scape_sim.cwl
inputs:
- id: in__be_verbose
  doc: ': be verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_dna
  doc: ': use DNA alphabet'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': use RNA alphabet'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_amino
  doc: ': use protein alphabet'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_naive
  doc: ': naive simulation: independent positions'
  type: boolean?
  inputBinding:
    prefix: --naive
- id: in_rn_ass
  doc: ': simulation according to a RNA secondary structure'
  type: boolean?
  inputBinding:
    prefix: --rnass
- id: in_potts
  doc: ': Metropolis-Hastins for a potts model'
  type: boolean?
  inputBinding:
    prefix: --potts
- id: in_potts_file
  doc: ': read potts params from file <f>'
  type: File?
  inputBinding:
    prefix: --pottsfile
- id: in_cnt_maxd
  doc: ': max distance for contact definition'
  type: long?
  inputBinding:
    prefix: --cntmaxD
- id: in_pdb_file
  doc: ': read contacts from pdbfile <f>'
  type: string?
  inputBinding:
    prefix: --pdbfile
- id: in_pott_sigma
  doc: ': if sampling param from a N(0,sigma)'
  type: long?
  inputBinding:
    prefix: --pottsigma
- id: in_ptp_gauss
  doc: ': potts param sampled from a Gaussian distribution'
  type: boolean?
  inputBinding:
    prefix: --ptpgauss
- id: in_ptp_file
  doc: ': potts param from file pottsfile'
  type: boolean?
  inputBinding:
    prefix: --ptpfile
- id: in__length_alignment
  doc: ': length of the alignment'
  type: long?
  inputBinding:
    prefix: -L
- id: in_number_sequences_simulated
  doc: ': number of sequences in the simulated msa, N=0 for use all'
  type: long?
  inputBinding:
    prefix: -N
- id: in_abl
  doc: ': tree average branch length in number of changes per site'
  type: long?
  inputBinding:
    prefix: --abl
- id: in_at_bl
  doc: ': tree average total branch length in number of changes per site'
  type: long?
  inputBinding:
    prefix: --atbl
- id: in_no_indels
  doc: ': produces ungapped alignments'
  type: boolean?
  inputBinding:
    prefix: --noindels
- id: in_eq_branch
  doc: ': make all branch lengths equal size'
  type: boolean?
  inputBinding:
    prefix: --eqbranch
- id: in_star
  doc: ': star topology'
  type: boolean?
  inputBinding:
    prefix: --star
- id: in_rand
  doc: ': independent sequences'
  type: boolean?
  inputBinding:
    prefix: --rand
- id: in_given
  doc: ': given msa topology'
  type: boolean?
  inputBinding:
    prefix: --given
- id: in_sim
  doc: ': simulated topology'
  type: boolean?
  inputBinding:
    prefix: --sim
- id: in_uses_q
  doc: ': sq from the origional msa used as root (default random)'
  type: string?
  inputBinding:
    prefix: --usesq
- id: in_evo_model
  doc: ': evolutionary model used'
  type: string?
  inputBinding:
    prefix: --evomodel
- id: in_ribo_file
  doc: ': read ribosum structure from file <f>'
  type: File?
  inputBinding:
    prefix: --ribofile
- id: in_mx
  doc: ': substitution rate matrix choice (of some built-in matrices)'
  type: string?
  inputBinding:
    prefix: --mx
- id: in_outdir
  doc: ': specify a directory for all output files'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_in_format
  doc: ': specify format'
  type: string?
  inputBinding:
    prefix: --informat
- id: in_one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean?
  inputBinding:
    prefix: --onemsa
- id: in_filter_xseqcons_residues
  doc: ': filter out seqs <x*seq_cons residues'
  type: string?
  inputBinding:
    prefix: -F
- id: in_var_32
  doc: ': require seqs to have < <x> id'
  type: string?
  inputBinding:
    prefix: -I
- id: in_var_33
  doc: ': require seqs to have >= <x> id'
  type: string?
  inputBinding:
    prefix: -i
- id: in_gap_thresh
  doc: ': keep columns with < <x> fraction of gaps'
  type: string?
  inputBinding:
    prefix: --gapthresh
- id: in_mini_d
  doc: ': minimum avgid of the given alignment'
  type: string?
  inputBinding:
    prefix: --minid
- id: in_max_id
  doc: ': maximum avgid of the given alignment'
  type: string?
  inputBinding:
    prefix: --maxid
- id: in_to_l
  doc: ': tolerance'
  type: string?
  inputBinding:
    prefix: --tol
- id: in_seed
  doc: ': set RNG seed to <n>'
  type: string?
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_msa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: ': specify a directory for all output files'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_send_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- R-scape-sim
