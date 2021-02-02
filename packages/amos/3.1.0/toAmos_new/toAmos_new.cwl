class: CommandLineTool
id: toAmos_new.cwl
inputs:
- id: in_t
  doc: '[SCUFL]'
  type: string
  inputBinding:
    prefix: -t
- id: in_library_matepair_information
  doc: "- library and mate-pair information in Bambus format\nin Trace Archive format\
    \ (not compatible with -i option)"
  type: File
  inputBinding:
    prefix: -m
- id: in_location_where_stored
  doc: '- The location where the AMOS bank will be stored.'
  type: string
  inputBinding:
    prefix: -b
- id: in_include_surrogate_unitigs_asm
  doc: '- include the surrogate unitigs in the .asm file as AMOS contigs.'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_include_contigs_asm
  doc: '- include the contigs in the .asm file as AMOS contigs.'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_include_unitigs_implies
  doc: '- include the unitigs in the .asm file as AMOS contigs (implies -S and turns
    off -C).'
  type: boolean
  inputBinding:
    prefix: -U
- id: in_include_surrogate_unitigs_reads
  doc: '- include the surrogate unitigs as reads in the tilling for a contig. Without
    this option the contig may have 0-coverage regions of coverage.'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_output_only_layout
  doc: '- output only the layout, not the consensus sequence for contigs. Will not
    output contig links or scaffolds. Implies -F.'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_fastq_file_interleaved
  doc: '- fastq file is interleaved, parse mates from this file (mutually exclusive
    with -m option)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__lib_identifier
  doc: '- lib Identifier'
  type: boolean
  inputBinding:
    prefix: -I
- id: in_min_insert_length
  doc: '- min insert length'
  type: boolean
  inputBinding:
    prefix: -N
- id: in_max_insert_length
  doc: '- max insert length'
  type: boolean
  inputBinding:
    prefix: -X
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- toAmos_new
