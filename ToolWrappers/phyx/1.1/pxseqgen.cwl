class: CommandLineTool
id: pxseqgen.cwl
inputs:
- id: in_tree_f
  doc: input treefile, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_out_f
  doc: output seq file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_length
  doc: length of sequences to generate. default is 1000
  type: long?
  inputBinding:
    prefix: --length
- id: in_base_f
  doc: 'comma-delimited base freqs in order: A,C,G,T. default is equal'
  type: string?
  inputBinding:
    prefix: --basef
- id: in_gamma
  doc: gamma shape value. default is no rate variation
  type: long?
  inputBinding:
    prefix: --gamma
- id: in_pin_var
  doc: proportion of invariable sites. default is 0.0
  type: double?
  inputBinding:
    prefix: --pinvar
- id: in_rate_mat
  doc: "comma-delimited input values for rate matrix. default is JC69\norder: A<->C,A<->G,A<->T,C<->G,C<->T,G<->T"
  type: long?
  inputBinding:
    prefix: --ratemat
- id: in_aa_rate_mat
  doc: "comma-delimited amino acid rate matrix. default is all freqs equal\norder\
    \ is ARNDCQEGHILKMFPSTWYV"
  type: string?
  inputBinding:
    prefix: --aaratemat
- id: in_aa_base_freq
  doc: 'AA frequencies, order: ARNDCQEGHILKMFPSTWYV'
  type: string?
  inputBinding:
    prefix: --aabasefreq
- id: in_protein
  doc: run as amino acid
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_n_reps
  doc: number of replicates
  type: long?
  inputBinding:
    prefix: --nreps
- id: in_seed
  doc: random number seed, clock otherwise
  type: long?
  inputBinding:
    prefix: --seed
- id: in_ancestors
  doc: "print the ancestral node sequences. default is no\nuse -p for the nodes labels"
  type: boolean?
  inputBinding:
    prefix: --ancestors
- id: in_print_node_labels
  doc: print newick with internal node labels. default is no
  type: boolean?
  inputBinding:
    prefix: --printnodelabels
- id: in_multi_model
  doc: "specify multiple models across tree\ninput is as follows:\nA<->C,A<->G,A<->T,C<->G,C<->T,G<->T,Node#,A<->C,A<->G,A<->T,C<->G,C<->T,G<->T\n\
    EX:.3,.3,.3,.3,.3,1,.3,.3,.2,.5,.4"
  type: double?
  inputBinding:
    prefix: --multimodel
- id: in_root_seq
  doc: set root sequence. default is random (from basefreqs)
  type: string?
  inputBinding:
    prefix: --rootseq
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output seq file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxseqgen
