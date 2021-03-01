class: CommandLineTool
id: eel.cwl
inputs:
- id: in_var_0
  doc: specifies how many alignments you want. (Default 3)
  type: string
  inputBinding:
    position: 0
- id: in_var_1
  doc: Bonus factor for hit (Default 2)
  type: string
  inputBinding:
    position: 1
- id: in_var_2
  doc: Penalty factor for rotation (Default 1.0)
  type: string
  inputBinding:
    position: 2
- id: in_var_3
  doc: Penalty factor for average distance between sites (Default 0.5)
  type: string
  inputBinding:
    position: 3
- id: in_var_4
  doc: Penalty factor for distance difference between sites (Default 1.0)
  type: string
  inputBinding:
    position: 4
- id: in_var_5
  doc: specifies how many nucletides there are per rotation. (Default 10.4)
  type: string
  inputBinding:
    position: 5
- id: in_filename
  doc: specifies a file in gff format is you want to be aligned
  type: File
  inputBinding:
    position: 0
- id: in_gap_limit
  doc: specifies how many sequences can have gaps at the same point (Default 0)
  type: string
  inputBinding:
    position: 0
- id: in_var_8
  doc: specifies how many alignments you want. (Default 1)
  type: string
  inputBinding:
    position: 1
- id: in_buffer
  doc: Specifies the size of buffer to be added to the found areas before multiple
    aligning in nukleotides (Default 1000)
  type: string
  inputBinding:
    position: 2
- id: in_var_10
  doc: Bonus factor for hit (Default 2)
  type: string
  inputBinding:
    position: 3
- id: in_var_11
  doc: Penalty factor for rotation (Default 1.0)
  type: string
  inputBinding:
    position: 4
- id: in_var_12
  doc: Penalty factor for average distance between sites (Default 0.5)
  type: string
  inputBinding:
    position: 5
- id: in_var_13
  doc: Penalty factor for distance difference between sites (Default 1.0)
  type: string
  inputBinding:
    position: 6
- id: in_var_14
  doc: Specifies how many nucletides there are per rotation. (Default 10.4)
  type: string
  inputBinding:
    position: 7
- id: in_var_15
  doc: specifies how many alignments you want. (Default 3)
  type: string
  inputBinding:
    position: 0
- id: in_var_16
  doc: Bonus factor for hit (Default 2)
  type: string
  inputBinding:
    position: 1
- id: in_var_17
  doc: Penalty factor for rotation (Default 1.0)
  type: string
  inputBinding:
    position: 2
- id: in_var_18
  doc: Penalty factor for average distance between sites (Default 0.5)
  type: string
  inputBinding:
    position: 3
- id: in_var_19
  doc: Penalty factor for distance difference between sites (Default 1.0)
  type: string
  inputBinding:
    position: 4
- id: in_var_20
  doc: specifies how many nucletides there are per rotation. (Default 10.4)
  type: string
  inputBinding:
    position: 5
- id: in_var_21
  doc: specifies how many alignments you want. (Default 3)
  type: string
  inputBinding:
    position: 0
- id: in_var_22
  doc: Bonus factor for hit (Default 2)
  type: string
  inputBinding:
    position: 1
- id: in_var_23
  doc: Penalty factor for rotation (Default 1.0)
  type: string
  inputBinding:
    position: 2
- id: in_var_24
  doc: Penalty factor for average distance between sites (Default 0.5)
  type: string
  inputBinding:
    position: 3
- id: in_var_25
  doc: Penalty factor for distance difference between sites (Default 1.0)
  type: string
  inputBinding:
    position: 4
- id: in_var_26
  doc: Specifies how many nucletides there are per rotation. (Default 10.4)
  type: string
  inputBinding:
    position: 5
- id: in_var_27
  doc: specifies how many alignments you want. (Default 3)
  type: string
  inputBinding:
    position: 0
- id: in_var_28
  doc: Bonus factor for hit (Default 2)
  type: string
  inputBinding:
    position: 1
- id: in_var_29
  doc: Penalty factor for rotation (Default 1.0)
  type: string
  inputBinding:
    position: 2
- id: in_var_30
  doc: Penalty factor for average distance between sites (Default 0.5)
  type: string
  inputBinding:
    position: 3
- id: in_var_31
  doc: Penalty factor for distance difference between sites (Default 1.0)
  type: string
  inputBinding:
    position: 4
- id: in_var_32
  doc: Specifies how many nucletides there are per rotation. (Default 10.4)
  type: string
  inputBinding:
    position: 5
- id: in_pw_files
  doc: If the needed pairwise alignments are calculated beforehand, the path to the
    directory they are in.
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eel
