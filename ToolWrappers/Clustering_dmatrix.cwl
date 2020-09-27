class: CommandLineTool
id: Clustering_dmatrix.cwl
inputs:
- id: in_dist_cut_off
  doc: Only save distances below the cutoff
  type: string
  inputBinding:
    prefix: --dist-cutoff
- id: in_in
  doc: Input fasta file
  type: File
  inputBinding:
    prefix: --in
- id: in_id_mapping
  doc: Id mapping file
  type: File
  inputBinding:
    prefix: --id-mapping
- id: in_min_overlap
  doc: "Minium number of comparable positions (default =\n100)"
  type: long
  inputBinding:
    prefix: --min-overlap
- id: in_mask
  doc: Mask sequence
  type: string
  inputBinding:
    prefix: --mask
- id: in_outfile
  doc: File to write sorted column matrix to
  type: File
  inputBinding:
    prefix: --outfile
- id: in_workdir
  doc: Working directory where temp files are stored
  type: Directory
  inputBinding:
    prefix: --workdir
- id: in_distance_calculator
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Clustering
- dmatrix
