class: CommandLineTool
id: ../../../ssu_esl_shuffle.cwl
inputs:
- id: direct_output_data
  doc: ': direct output data to file <f>'
  type: string
  inputBinding:
    prefix: -o
- id: generate_n_samples
  doc: ': generate <n> samples (per input seq/msa)  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: -N
- id: truncate_outputs_length
  doc: ': truncate outputs to length <n>  [0]  (n>=0)'
  type: string
  inputBinding:
    prefix: -L
- id: shuffle_preserving_composition
  doc: ': shuffle preserving monoresidue composition  [default]'
  type: boolean
  inputBinding:
    prefix: -m
- id: shuffle_preserving_mono
  doc: ': shuffle preserving mono- and di-residue composition'
  type: boolean
  inputBinding:
    prefix: -d
- id: shuffle_nonoverlapping_nmers
  doc: ': shuffle nonoverlapping <n>-mers  (n>0)'
  type: string
  inputBinding:
    prefix: -k
- id: generate_markov_properties
  doc: ': generate with 0th order Markov properties per input'
  type: boolean
  inputBinding:
    prefix: '-0'
- id: generate_st_order
  doc: ': generate with 1st order Markov properties per input'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: _reverse_input
  doc: ': reverse each input'
  type: boolean
  inputBinding:
    prefix: -r
- id: regionally_shuffle_inputs
  doc: ': regionally shuffle inputs in window size <n>  (n>0)'
  type: string
  inputBinding:
    prefix: -w
- id: rna
  doc: ': generate RNA sequence  [default]'
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: ': generate DNA sequence'
  type: boolean
  inputBinding:
    prefix: --dna
- id: amino
  doc: ': generate protein sequence'
  type: boolean
  inputBinding:
    prefix: --amino
- id: seed
  doc: ": set random number generator's seed to <n>  [0]  (n>=0)"
  type: string
  inputBinding:
    prefix: --seed
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-shuffle
