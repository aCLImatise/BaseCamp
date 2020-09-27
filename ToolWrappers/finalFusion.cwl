class: CommandLineTool
id: finalFusion.cwl
inputs:
- id: in_library_file
  doc: Library file.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_prefix_input_files
  doc: Prefix of input files.
  type: boolean
  inputBinding:
    prefix: -g
- id: in_threads
  doc: Threads.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_d
  doc: Enable this mode.
  type: boolean
  inputBinding:
    prefix: -D
- id: in_kmer
  doc: Kmer.
  type: boolean
  inputBinding:
    prefix: -K
- id: in_input_contig_filecant
  doc: Input contig file.(can't be name prefix.contig)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_m
  doc: Enable this mode.
  type: boolean
  inputBinding:
    prefix: -M
- id: in_b
  doc: Enable this mode.
  type: boolean
  inputBinding:
    prefix: -B
- id: in_weight_threshold_outputting
  doc: Weight threshold for outputting bundle file.(default 3)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_o
  doc: Enable this mode.
  type: boolean
  inputBinding:
    prefix: -O
- id: in_var_10
  doc: Enable this mode.
  type: boolean
  inputBinding:
    prefix: -S
- id: in_threshold_minimum_length
  doc: threshold for minimum length of contig(default K+2).
  type: boolean
  inputBinding:
    prefix: -L
- id: in_overlap_percent_threshold_subgraphdefault
  doc: Overlap percent threshold for a subgraph(default 0.075).
  type: boolean
  inputBinding:
    prefix: -P
- id: in_overlap_percent_threshold_pedefault
  doc: Overlap percent threshold for a PE(default 0.2).
  type: boolean
  inputBinding:
    prefix: -t
- id: in_overlap_length_threshold
  doc: Overlap length threshold for remove transitive connect(default 20).
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- finalFusion
