class: CommandLineTool
id: toAmos.cwl
inputs:
- id: in_output_filename_standard
  doc: "- output filename ('-' for standard output)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_sequence_data_file
  doc: "- sequence data file in FASTA format (reads names ending\nin .1 or /1 are\
    \ taken as mate pairs)"
  type: File?
  inputBinding:
    prefix: -s
- id: in_sequence_quality_score
  doc: '- sequence quality score file in QUAL format'
  type: File?
  inputBinding:
    prefix: -q
- id: in_gq
  doc: '- minimum quality score for high-quality bases (default: 30)'
  type: long?
  inputBinding:
    prefix: -gq
- id: in_bq
  doc: '- maximum quality score for low-quality bases (default: 10)'
  type: long?
  inputBinding:
    prefix: -bq
- id: in_provide_tigr_file
  doc: '- provide TIGR .contig file'
  type: File?
  inputBinding:
    prefix: -c
- id: in_use_celera_assembler
  doc: '- use Celera Assembler .asm contig file'
  type: File?
  inputBinding:
    prefix: -a
- id: in_include_surrogate_unitigs
  doc: '- include the surrogate unitigs in the .asm file as AMOS contigs'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_utg
  doc: '- include all UTG unitig messages in the .asm file as AMOS contigs'
  type: boolean?
  inputBinding:
    prefix: -utg
- id: in_ta
  doc: '- contig file in TIGR Assembler format (.tasm)'
  type: File?
  inputBinding:
    prefix: -ta
- id: in_ace
  doc: '- contig file in Phred ACE format (can be accompanied by -q)'
  type: File?
  inputBinding:
    prefix: -ace
- id: in_phd
  doc: '- read the content of PHD file referenced in ACE files'
  type: boolean?
  inputBinding:
    prefix: -phd
- id: in_library_matepair_information
  doc: '- library and mate-pair information file in Bambus format'
  type: File?
  inputBinding:
    prefix: -m
- id: in_ancilliary_data_file
  doc: "- ancilliary data file (library, mate-pair, clear range)\nin Trace Archive\
    \ XML format"
  type: File?
  inputBinding:
    prefix: -x
- id: in_library_matepair_sequence
  doc: "- library, mate-pair, sequence, quality, and clear\nrange data file in Celera\
    \ Assembler format"
  type: File?
  inputBinding:
    prefix: -f
- id: in_acc
  doc: '- use accession numbers in FRG files'
  type: boolean?
  inputBinding:
    prefix: -acc
- id: in_arachne
  doc: '- scaffold file in Arachne .links format'
  type: File?
  inputBinding:
    prefix: -arachne
- id: in_sc_aff
  doc: '- scaffold file in Bambus .scaff format'
  type: File?
  inputBinding:
    prefix: -scaff
- id: in_read_insert_information
  doc: '- read insert information'
  type: File?
  inputBinding:
    prefix: -i
- id: in_map
  doc: '- read map information'
  type: string?
  inputBinding:
    prefix: -map
- id: in_pos
  doc: '- TIGR-style .pos position file'
  type: File?
  inputBinding:
    prefix: -pos
- id: in_id
  doc: '- start numbering AMOS internal IDs at this number'
  type: long?
  inputBinding:
    prefix: -id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_standard
  doc: "- output filename ('-' for standard output)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename_standard)
hints: []
cwlVersion: v1.1
baseCommand:
- toAmos
