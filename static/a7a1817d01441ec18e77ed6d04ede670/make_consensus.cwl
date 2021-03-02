class: CommandLineTool
id: make_consensus.cwl
inputs:
- id: in_output_alignments_instead
  doc: Output alignments instead of consensus messages
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_output_amos_file
  doc: Output an AMOS message file
  type: File?
  inputBinding:
    prefix: -A
- id: in_input_amos_bank
  doc: Input from AMOS bank
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_amos_bank
  doc: Output to an AMOS bank
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_process_contig_messages
  doc: Process contig messages
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_input_celera_msg
  doc: Input is Celera msg format, i.e., a .cgb or .cgw file
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_set_alignment_error
  doc: Set alignment error rate to <x>, e.g.,  -e 0.05  for 5% error
  type: double?
  inputBinding:
    prefix: -e
- id: in_get_extra_sequences
  doc: Get extra sequences to align from fasta file <fn>
  type: File?
  inputBinding:
    prefix: -E
- id: in_output_consensus_only
  doc: Output consensus only in FASTA format
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_file_containing_list_iids
  doc: File containing list of IIDs to be processed
  type: File?
  inputBinding:
    prefix: -i
- id: in_use_clear_range
  doc: Use clear range in layout rather than readbank (-b only)
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_file_containing_list_eids
  doc: File containing list of EIDs (names) to be processed
  type: File?
  inputBinding:
    prefix: -n
- id: in_set_minimum_overlap
  doc: Set minimum overlap bases to <n>
  type: string?
  inputBinding:
    prefix: -o
- id: in_umd_formatusing_reads
  doc: "Input is simple contig format, i.e., UMD format\nusing partial reads"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_output_eid_seqnames
  doc: Output EID seqnames for reads instead of IID ints
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_input_umd_format
  doc: Input is simple contig format, i.e., UMD format
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_output_tigr_assembler
  doc: Output in TIGR Assembler contig format
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_process_unitig_messages
  doc: Process unitig messages
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_set_verbose_level
  doc: Set verbose level to <n>.  Higher produces more output
  type: string?
  inputBinding:
    prefix: -v
- id: in_set_alignment_wiggle
  doc: 'Set alignment wiggle to <n>. Default is 15. Use a smaller value for Solexa
    reads (Example: -w 2)'
  type: long?
  inputBinding:
    prefix: -w
- id: in_expel_poor_aligning
  doc: Expel poor aligning reads from contigs and list them in file <fn>
  type: File?
  inputBinding:
    prefix: -x
- id: in_tig_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_amos_file
  doc: Output an AMOS message file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_amos_file)
hints: []
cwlVersion: v1.1
baseCommand:
- make-consensus
