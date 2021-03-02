class: CommandLineTool
id: ReadsLengthOfSpecificRegions.cwl
inputs:
- id: in_input
  doc: Input file in BAM format
  type: File?
  inputBinding:
    prefix: --input
- id: in_left_position
  doc: Left position of the sequence you are interested in.
  type: string?
  inputBinding:
    prefix: --left-position
- id: in_right_position
  doc: Right position of the sequence you are interested in.
  type: string?
  inputBinding:
    prefix: --right-position
- id: in_output
  doc: Prefix of output files.[required]
  type: string?
  inputBinding:
    prefix: --output
- id: in_coordinate_file
  doc: "The file should contain the coordinate of start and\nstop codon. Generated\
    \ by\nOutputTranscriptInfo.py.[required]"
  type: File?
  inputBinding:
    prefix: --coordinateFile
- id: in_select_trans_list
  doc: "Selected transcript list used for metagene\nanalysis.This files requires the\
    \ first column must be\nthe transcript ID  with a column name. default=none"
  type: string?
  inputBinding:
    prefix: --select_trans_list
- id: in_type
  doc: Type of regions.[CDS/5UTR/3UTR].default=CDS
  type: long?
  inputBinding:
    prefix: --type
- id: in_id_type
  doc: "define the id type users input. the default is\ntranscript id, if not, will\
    \ be transformed into\ntranscript id. default=transcript_id\n"
  type: string?
  inputBinding:
    prefix: --id-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- ReadsLengthOfSpecificRegions
