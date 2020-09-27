class: CommandLineTool
id: deepac_strain_explain_mcompare.cwl
inputs:
- id: in_in_file_one
  doc: File containing all filter motifs in transfac format
  type: File
  inputBinding:
    prefix: --in_file1
- id: in_in_file_two
  doc: File containing all filter motifs in transfac format
  type: File
  inputBinding:
    prefix: --in_file2
- id: in_train_data
  doc: "Training data (.npy), necessary to calculate\nbackground GC content"
  type: string
  inputBinding:
    prefix: --train_data
- id: in_extensively
  doc: "Compare every motif from --in_file1 with every motif\nfrom --in_file2; default:\
    \ compare only motifs with the\nsame ID"
  type: boolean
  inputBinding:
    prefix: --extensively
- id: in_rc
  doc: Consider RC-complement of a motif
  type: boolean
  inputBinding:
    prefix: --rc
- id: in_shift
  doc: Shift motifs to find best alignment
  type: boolean
  inputBinding:
    prefix: --shift
- id: in_min_overlap
  doc: "Minimal overlap between two motifs if motifs are\nshifted to find the best\
    \ alignment (--shift)"
  type: long
  inputBinding:
    prefix: --min_overlap
- id: in_out_dir
  doc: "Output directory\n"
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_explain
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_m_compare
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "Output directory\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- deepac-strain
- explain
- mcompare
