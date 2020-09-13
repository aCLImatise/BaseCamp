class: CommandLineTool
id: ../../../fqtools.cwl
inputs:
- id: in_show_program_version
  doc: Show the program version and exit.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_allow_bases_acgtn
  doc: Allow DNA sequence bases       (ACGTN)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_allow_rna_bases
  doc: Allow RNA sequence bases       (ACGUN)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_allow_bases_rykmswbdhv
  doc: Allow ambiguous sequence bases (RYKMSWBDHV)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_allow_mask_base
  doc: Allow mask sequence base       (X)
  type: boolean
  inputBinding:
    prefix: -m
- id: in_allow_uppercase_bases
  doc: Allow uppercase sequence bases
  type: boolean
  inputBinding:
    prefix: -u
- id: in_allow_sequence_bases
  doc: Allow lowercase sequence bases
  type: boolean
  inputBinding:
    prefix: -l
- id: in_set_replacement_default
  doc: Set the pair replacement character (default "%")
  type: string
  inputBinding:
    prefix: -p
- id: in_set_input_size
  doc: Set the input buffer size
  type: long
  inputBinding:
    prefix: -b
- id: in_set_buffer_size
  doc: Set the output buffer size
  type: long
  inputBinding:
    prefix: -B
- id: in_set_score_encoding
  doc: Set the quality score encoding
  type: string
  inputBinding:
    prefix: -q
- id: in_set_input_format
  doc: Set the input file format
  type: File
  inputBinding:
    prefix: -f
- id: in_set_file_format
  doc: Set the output file format
  type: File
  inputBinding:
    prefix: -F
- id: in_read_interleaved_pairs
  doc: Read interleaved input file pairs
  type: boolean
  inputBinding:
    prefix: -i
- id: in_write_interleaved_pairs
  doc: Write interleaved output file pairs
  type: File
  inputBinding:
    prefix: -I
- id: in_hv_dram_uli
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hvdramuli
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_set_file_format
  doc: Set the output file format
  type: File
  outputBinding:
    glob: $(inputs.in_set_file_format)
- id: out_write_interleaved_pairs
  doc: Write interleaved output file pairs
  type: File
  outputBinding:
    glob: $(inputs.in_write_interleaved_pairs)
cwlVersion: v1.1
baseCommand:
- fqtools
