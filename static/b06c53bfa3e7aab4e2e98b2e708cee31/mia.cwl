class: CommandLineTool
id: ../../../mia.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_supplied_default_matrix
  doc: (if not supplied an default matrix is used)
  type: File
  inputBinding:
    prefix: -s
- id: in_root_file_name
  doc: <root file name for maln output file(s)> (assembly.maln.iter)
  type: File
  inputBinding:
    prefix: -m
- id: in_database_repeat_alignment
  doc: database has repeat sequences, keep one based on alignment score
  type: string
  inputBinding:
    prefix: -u
- id: in_database_repeat_sum
  doc: database has repeat sequences, keep one based on sum of q-scores
  type: string
  inputBinding:
    prefix: -U
- id: in_tolerance_collapse_sequences
  doc: "<tolerance> collapse sequences with same start, end, strand info into a single\
    \ sequence\nAllow <tolerance> bases difference for start and end coordinates\n\
    Important: keep NO SPACE between parameter and value: e.g. -C3"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_adapter_presence_coordinate
  doc: "adapter presence and coordinate information to more aggressively\nremove repeat\
    \ sequences - suitable only for 454 sequences that have not\nalready been adapter\
    \ trimmed"
  type: long
  inputBinding:
    prefix: -A
- id: in_database_adapters_trim
  doc: database has adapters, trim these
  type: string
  inputBinding:
    prefix: -T
- id: in_var_8
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: in_filename_use_ignoring
  doc: <filename of list of sequence IDs to use, ignoring all others>
  type: boolean
  inputBinding:
    prefix: -I
- id: in_consensus_calling_default
  doc: <consensus calling code; default = 1>
  type: boolean
  inputBinding:
    prefix: -p
- id: in_referenceassembly_is_circular
  doc: reference/assembly is circular
  type: string
  inputBinding:
    prefix: -c
- id: in_assembly_convergence_default
  doc: assembly until convergence (default)
  type: string
  inputBinding:
    prefix: -i
- id: in_iterate_assembly_convergence
  doc: not iterate assembly until convergence
  type: string
  inputBinding:
    prefix: -n
- id: in_only_output_assembly
  doc: <only output the FINAL assembly, not each iteration>
  type: boolean
  inputBinding:
    prefix: -F
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -D
- id: in_special_discount_homopolymer
  doc: special discount for homopolymer gaps
  type: string
  inputBinding:
    prefix: -h
- id: in_var_18
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: in_dynamic_score_cutoff
  doc: <do not do dynamic score cutoff, instead use this Hard score cutoff>
  type: boolean
  inputBinding:
    prefix: -H
- id: in_var_20
  doc: ''
  type: long
  inputBinding:
    prefix: -S
- id: in_var_21
  doc: ''
  type: long
  inputBinding:
    prefix: -N
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_root_file_name
  doc: <root file name for maln output file(s)> (assembly.maln.iter)
  type: File
  outputBinding:
    glob: $(inputs.in_root_file_name)
cwlVersion: v1.1
baseCommand:
- mia
