class: CommandLineTool
id: ../../../toAmos_new.cwl
inputs:
- id: t
  doc: '[SCUFL]'
  type: string
  inputBinding:
    prefix: -t
- id: location_where_stored
  doc: '- The location where the AMOS bank will be stored.'
  type: string
  inputBinding:
    prefix: -b
- id: include_surrogate_unitigs_file
  doc: '- include the surrogate unitigs in the .asm file as AMOS contigs.'
  type: boolean
  inputBinding:
    prefix: -S
- id: include_contigs_file
  doc: '- include the contigs in the .asm file as AMOS contigs.'
  type: boolean
  inputBinding:
    prefix: -C
- id: include_unitigs_implies
  doc: '- include the unitigs in the .asm file as AMOS contigs (implies -S and turns
    off -C).'
  type: boolean
  inputBinding:
    prefix: -U
- id: include_surrogate_unitigs_reads
  doc: '- include the surrogate unitigs as reads in the tilling for a contig. Without
    this option the contig may have 0-coverage regions of coverage.'
  type: boolean
  inputBinding:
    prefix: -F
- id: output_only_layout
  doc: '- output only the layout, not the consensus sequence for contigs. Will not
    output contig links or scaffolds. Implies -F.'
  type: boolean
  inputBinding:
    prefix: -L
- id: fastq_file_interleaved
  doc: '- fastq file is interleaved, parse mates from this file (mutually exclusive
    with -m option)'
  type: boolean
  inputBinding:
    prefix: -i
- id: _lib_identifier
  doc: '- lib Identifier'
  type: boolean
  inputBinding:
    prefix: -I
- id: min_insert_length
  doc: '- min insert length'
  type: boolean
  inputBinding:
    prefix: -N
- id: max_insert_length
  doc: '- max insert length'
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- toAmos_new
