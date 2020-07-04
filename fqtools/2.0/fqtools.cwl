class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fqtools.cwl
inputs:
- id: show_program_version
  doc: Show the program version and exit.
  type: boolean
  inputBinding:
    prefix: -v
- id: allow_dna_sequence_bases
  doc: Allow DNA sequence bases       (ACGTN)
  type: boolean
  inputBinding:
    prefix: -d
- id: allow_rna_sequence_bases
  doc: Allow RNA sequence bases       (ACGUN)
  type: boolean
  inputBinding:
    prefix: -r
- id: allow_ambiguous_bases
  doc: Allow ambiguous sequence bases (RYKMSWBDHV)
  type: boolean
  inputBinding:
    prefix: -a
- id: allow_sequence_base
  doc: Allow mask sequence base       (X)
  type: boolean
  inputBinding:
    prefix: -m
- id: allow_uppercase_sequence_bases
  doc: Allow uppercase sequence bases
  type: boolean
  inputBinding:
    prefix: -u
- id: allow_lowercase_sequence_bases
  doc: Allow lowercase sequence bases
  type: boolean
  inputBinding:
    prefix: -l
- id: set_replacement_default
  doc: Set the pair replacement character (default "%")
  type: string
  inputBinding:
    prefix: -p
- id: set_input_size
  doc: Set the input buffer size
  type: string
  inputBinding:
    prefix: -b
- id: set_output_size
  doc: Set the output buffer size
  type: string
  inputBinding:
    prefix: -B
- id: set_score_encoding
  doc: Set the quality score encoding
  type: string
  inputBinding:
    prefix: -q
- id: set_input_format
  doc: Set the input file format
  type: string
  inputBinding:
    prefix: -f
- id: set_file_format
  doc: Set the output file format
  type: string
  inputBinding:
    prefix: -F
- id: read_interleaved_pairs
  doc: Read interleaved input file pairs
  type: boolean
  inputBinding:
    prefix: -i
- id: write_file_pairs
  doc: Write interleaved output file pairs
  type: boolean
  inputBinding:
    prefix: -I
- id: hv_dram_uli
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hvdramuli
outputs: []
cwlVersion: v1.1
baseCommand:
- fqtools
