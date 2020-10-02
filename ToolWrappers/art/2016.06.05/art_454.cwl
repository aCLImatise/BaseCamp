class: CommandLineTool
id: art_454.cwl
inputs:
- id: in_perform_singleend_simulation
  doc: to perform single-end amplicon sequencing simulation
  type: string
  inputBinding:
    prefix: -A
- id: in_perform_pairedend_simulation
  doc: to perform paired-end amplicon sequencing simulation
  type: string
  inputBinding:
    prefix: -B
- id: in_use_cigar_alignment
  doc: to use CIGAR 'M' instead of '=/X' for alignment match/mismatch
  type: string
  inputBinding:
    prefix: -M
- id: in_output_aln_file
  doc: to output the ALN alignment file
  type: File
  inputBinding:
    prefix: -a
- id: in_output_sam_file
  doc: to output the SAM alignment file
  type: File
  inputBinding:
    prefix: -s
- id: in_warning_messages_debugging
  doc: out warning messages for debugging
  type: string
  inputBinding:
    prefix: -d
- id: in_simulate_reads_builtin
  doc: 'to simulate reads from the built-in GS FLX Titanium profile [default: GS FLX
    profile]'
  type: string
  inputBinding:
    prefix: -t
- id: in_fixed_random_seed
  doc: a fixed random seed for the simulation (to generate two identical datasets
    from two different runs)
  type: string
  inputBinding:
    prefix: -r
- id: in_number_flow_cycles
  doc: 'the number of flow cycles by the sequencer [ default: 100 for GS-FLX, and
    200 for GS-FLX Titanium ]'
  type: long
  inputBinding:
    prefix: -c
- id: in_users_own_read
  doc: "user's own read profile for simulation\nNOTE: the name of a read profile is\
    \ the directory containing read profile data files.\nplease read the REAME file\
    \ about the format of 454 read profile data files and.\nand the default filenames\
    \ of these data files."
  type: File
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_aln_file
  doc: to output the ALN alignment file
  type: File
  outputBinding:
    glob: $(inputs.in_output_aln_file)
- id: out_output_sam_file
  doc: to output the SAM alignment file
  type: File
  outputBinding:
    glob: $(inputs.in_output_sam_file)
cwlVersion: v1.1
baseCommand:
- art_454
