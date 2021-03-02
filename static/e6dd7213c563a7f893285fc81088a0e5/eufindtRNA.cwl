class: CommandLineTool
id: eufindtRNA.cwl
inputs:
- id: in_save_trnas_outfile
  doc: ': save tRNAs in <outfile>'
  type: string?
  inputBinding:
    prefix: -o
- id: in_relaxed_mode_terminators
  doc: ': relaxed mode (no terminators searched for)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_strict_mode_discard
  doc: ': strict mode (discard tRNAs with missing terminators)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_set_max_intronvariable
  doc: ': set max intron+variable loop length (default=140)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_manually_set_cutoff
  doc: ': manually set final score cutoff to <Score> (def=-31.8)'
  type: double?
  inputBinding:
    prefix: -X
- id: in_set_cutoff_
  doc: ': set cutoff for intermediate score (def=-31.25)'
  type: double?
  inputBinding:
    prefix: -I
- id: in_save_trna_components
  doc: ': save tRNA score components (for Debugging)'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_check_uppercase_dna
  doc: ": don't check for uppercase or DNA alphabet"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_start_nucleotide_numbering
  doc: ': start nucleotide numbering at <integer> (def=1)'
  type: long?
  inputBinding:
    prefix: -i
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eufindtRNA
