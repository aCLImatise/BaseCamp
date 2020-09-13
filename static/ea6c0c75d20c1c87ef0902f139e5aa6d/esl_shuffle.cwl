class: CommandLineTool
id: ../../../esl_shuffle.cwl
inputs:
- id: in_direct_output_data
  doc: ': direct output data to file <f>'
  type: File
  inputBinding:
    prefix: -o
- id: in_generate_n_samples
  doc: ': generate <n> samples (per input seq/msa)  [1]  (n>0)'
  type: long
  inputBinding:
    prefix: -N
- id: in_truncate_outputs_length
  doc: ': truncate outputs to length <n>  [0]  (n>=0)'
  type: long
  inputBinding:
    prefix: -L
- id: in_shuffle_preserving_composition
  doc: ': shuffle preserving monoresidue composition  [default]'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_shuffle_preserving_
  doc: ': shuffle preserving mono- and di-residue composition'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_shuffle_nonoverlapping_nmers
  doc: ': shuffle nonoverlapping <n>-mers  (n>0)'
  type: long
  inputBinding:
    prefix: -k
- id: in_generate_order_markov
  doc: ': generate with 0th order Markov properties per input'
  type: boolean
  inputBinding:
    prefix: '-0'
- id: in_generate_st_order
  doc: ': generate with 1st order Markov properties per input'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in__reverse_input
  doc: ': reverse each input'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_regionally_shuffle_inputs
  doc: ': regionally shuffle inputs in window size <n>  (n>0)'
  type: long
  inputBinding:
    prefix: -w
- id: in_take_bootstrapping_samples
  doc: ': take bootstrapping samples'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_shuffle_residues_independently
  doc: ': shuffle residues in each column independently'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_rna
  doc: ': generate RNA sequence  [default]'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_dna
  doc: ': generate DNA sequence'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_amino
  doc: ': generate protein sequence'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_seed
  doc: ": set random number generator's seed to <n>  [0]  (n>=0)"
  type: long
  inputBinding:
    prefix: --seed
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -G
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_output_data
  doc: ': direct output data to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_direct_output_data)
cwlVersion: v1.1
baseCommand:
- esl-shuffle
