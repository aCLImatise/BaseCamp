class: CommandLineTool
id: pancake_addChrom.cwl
inputs:
- id: in_pan_file
  doc: Name of PanCake Data Object File (required)
  type: File
  inputBinding:
    prefix: --panfile
- id: in_sequences
  doc: "fasta or multiple fasta file providing input\nchromosome sequences"
  type: string[]
  inputBinding:
    prefix: --sequences
- id: in_ids
  doc: gi ids of sequences to download from NCBI
  type: string[]
  inputBinding:
    prefix: --ids
- id: in_email
  doc: "if downloading your sequences via gi ids, please\nspecify your email address;\
    \ in case of excessive\nusage, NCBI will attempt to contact a user at the\ne-mail\
    \ address provided prior to blocking access to\nthe E-utilities"
  type: string
  inputBinding:
    prefix: --email
- id: in_output
  doc: "output file for new PanCake Object (DEFAULT=PAN_FILE);\nif specified, PanCake\
    \ Data Object in PAN_FILE stays\nunchanged"
  type: File
  inputBinding:
    prefix: --output
- id: in_ali
  doc: "[ALI [ALI ...]], -a [ALI [ALI ...]]\npairwise alignments (BLAST or nucmer\
    \ output) to\ninclude in PanCake Object"
  type: boolean
  inputBinding:
    prefix: --ali
- id: in_min_len
  doc: "minimum length of pairwise alignments to include\n(DEFUALT=25)"
  type: long
  inputBinding:
    prefix: --min_len
- id: in_no_self_alignments
  doc: "if set, skip pairwise alignments between regions on\nidentical chromosomes\
    \ as input (DEFAULT=False)\n"
  type: boolean
  inputBinding:
    prefix: --no_self_alignments
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file for new PanCake Object (DEFAULT=PAN_FILE);\nif specified, PanCake\
    \ Data Object in PAN_FILE stays\nunchanged"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pancake
- addChrom
