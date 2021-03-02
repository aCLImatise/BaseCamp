class: CommandLineTool
id: dlessP.cwl
inputs:
- id: in_msa_format
  doc: "|PHYLIP|MPM|MAF|SS\nAlignment format (default is to guess format from file\
    \ contents).\nNote that the program msa_view can be used for conversion."
  type: File?
  inputBinding:
    prefix: --msa-format
- id: in_refseq
  doc: "(for use with --msa-format MAF) Read the complete text of the\nreference sequence\
    \ from <fname> (FASTA format) and combine it\nwith the contents of the MAF file\
    \ to produce a complete,\nordered representation of the alignment.  The reference\n\
    sequence of the MAF file is assumed to be the one that appears\nfirst in each\
    \ block."
  type: File?
  inputBinding:
    prefix: --refseq
- id: in_ref_idx
  doc: "Use coordinate frame of specified sequence in output.  Default\nvalue is 1,\
    \ first sequence in alignment; 0 indicates\ncoordinate frame of entire multiple\
    \ alignment."
  type: long?
  inputBinding:
    prefix: --refidx
- id: in_timing
  doc: Write timing data to <file>.
  type: File?
  inputBinding:
    prefix: --timing
- id: in_html
  doc: "Create a directory and write one HTML file into it per DLESS\nprediction,\
    \ giving the stats for that prediction."
  type: File?
  inputBinding:
    prefix: --html
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree_dot_mod
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_predictions_dot_gff
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dlessP
