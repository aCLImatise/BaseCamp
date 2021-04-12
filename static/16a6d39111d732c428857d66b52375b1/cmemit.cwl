class: CommandLineTool
id: cmemit.cwl
inputs:
- id: in_send_sequence_output
  doc: ': send sequence output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in__generate_sequences
  doc: ': generate <n> sequences  [10]'
  type: long?
  inputBinding:
    prefix: -N
- id: in_write_generated_sequences_unaligned
  doc: ': write generated sequences as unaligned FASTA [default]  [default]'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_write_generated_sequences_alignment
  doc: ': write generated sequences as an alignment'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_generate_single_sequence
  doc: ': generate a single "consensus" sequence only'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_embed_emitted_sequences
  doc: ': embed emitted sequences within larger random sequences of length <n>'
  type: long?
  inputBinding:
    prefix: -e
- id: in_local_emit_locally
  doc: ': local; emit from a locally configured model [default: global]'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_u_five_p
  doc: ": truncate unaligned sequences 5', choosing a random start posn"
  type: boolean?
  inputBinding:
    prefix: --u5p
- id: in_u_three_p
  doc: ": truncate unaligned sequences 3', choosing a random end   posn"
  type: boolean?
  inputBinding:
    prefix: --u3p
- id: in_a_five_p
  doc: ": truncate aln 5', start at match column <n> (use 0 for random posn)"
  type: long?
  inputBinding:
    prefix: --a5p
- id: in_a_three_p
  doc: ": truncate aln 3', end   at match column <n> (use 0 for random posn)"
  type: long?
  inputBinding:
    prefix: --a3p
- id: in_seed
  doc: ': set RNG seed to <n> [default: one-time arbitrary seed]  [0]'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_iid
  doc: ': with -e, generate larger sequences as 25% ACGU (iid)'
  type: boolean?
  inputBinding:
    prefix: --iid
- id: in_rna
  doc: ': output as RNA sequence data  [default]'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_dna
  doc: ': output as DNA sequence data'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_idx
  doc: ': start sequence numbering at <n>  [1]'
  type: long?
  inputBinding:
    prefix: --idx
- id: in_out_format
  doc: ': w/-a output alignment in format <s>  [Stockholm]'
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_t_file
  doc: ': dump parsetrees to file <f>'
  type: File?
  inputBinding:
    prefix: --tfile
- id: in_exp
  doc: ': exponentiate CM probabilities by <x> before emitting'
  type: string?
  inputBinding:
    prefix: --exp
- id: in_hmm_only
  doc: ': emit from filter HMM, not from CM'
  type: boolean?
  inputBinding:
    prefix: --hmmonly
- id: in_no_hmm_only
  doc: ': always emit from CM, even for models with 0 basepairs'
  type: boolean?
  inputBinding:
    prefix: --nohmmonly
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_sequence_output
  doc: ': send sequence output to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_send_sequence_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/infernal:1.1.4--h779adbc_0
cwlVersion: v1.1
baseCommand:
- cmemit
