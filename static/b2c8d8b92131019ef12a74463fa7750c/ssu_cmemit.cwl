class: CommandLineTool
id: ssu_cmemit.cwl
inputs:
- id: in_generate_n_sequences
  doc: ': generate <n> sequences  [10]  (n>0)'
  type: long
  inputBinding:
    prefix: -n
- id: in_write_generated_sequences_unaligned
  doc: ': write generated sequences as unaligned FASTA  [default]'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_write_generated_sequences_stockholm
  doc: ': write generated sequences as a STOCKHOLM alignment'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_generate_single_sequence
  doc: ': generate a single "consensus" sequence only'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_local_emit_locally
  doc: ': local; emit from a locally configured model'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_start_sequence_numbering
  doc: ': start sequence numbering at <n>  [1]  (n>0)'
  type: long
  inputBinding:
    prefix: -i
- id: in_set_random_seed
  doc: ': set random number generator seed to <n>  [0]  (n>=0)'
  type: long
  inputBinding:
    prefix: -s
- id: in_devhelp
  doc: ': show list of otherwise undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: in_rna
  doc: ': output alignment as RNA sequence data  [default]'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_dna
  doc: ': output alignment as DNA (not RNA) sequence data'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_i_leaved
  doc: ': with -a, output alnment in interleaved Stockholm format'
  type: boolean
  inputBinding:
    prefix: --ileaved
- id: in_t_file
  doc: ': dump parsetrees to file <f>'
  type: File
  inputBinding:
    prefix: --tfile
- id: in_exp
  doc: ': exponentiate CM probabilities by <x> before emitting  (x>0)'
  type: long
  inputBinding:
    prefix: --exp
- id: in_begin
  doc: ': truncate alignment, begin at match column <n>  (n>=1)'
  type: long
  inputBinding:
    prefix: --begin
- id: in_end
  doc: ': truncate alignment,   end at match column <n>  (n>=1)'
  type: long
  inputBinding:
    prefix: --end
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence_output_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sequence_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_sequence_output_file)
cwlVersion: v1.1
baseCommand:
- ssu-cmemit
