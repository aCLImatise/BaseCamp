class: CommandLineTool
id: hotspot3d_prep.cwl
inputs:
- id: in_output_dir
  doc: "Output directory of proximity files\nOPTIONAL"
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_start
  doc: What step to start on ( calroi , statis , anno , trans , cosmic , prior ),
    default is calroi
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_blat
  doc: Installation of blat to use for trans (defaults to your system default)
  type: boolean?
  inputBinding:
    prefix: --blat
- id: in_gr_ch
  doc: Genome build (37 or 38), defaults to 38 or according to --release input
  type: boolean?
  inputBinding:
    prefix: --grch
- id: in_release
  doc: "Ensembl release verion (55-87), defaults to 87 or to the latest release according\
    \ to --grch input\nNote that releases 55-75 correspond to GRCh37 & 76-87 correspond\
    \ to GRCh38"
  type: boolean?
  inputBinding:
    prefix: --release
- id: in_p_value_cut_off
  doc: p_value cutoff(<=) for prior, default is 0.05
  type: boolean?
  inputBinding:
    prefix: --p-value-cutoff
- id: in_three_d_distance_cut_off
  doc: 3D distance cutoff (<= Angstroms) for prior, default is 20
  type: boolean?
  inputBinding:
    prefix: --3d-distance-cutoff
- id: in_linear_cut_off
  doc: Linear distance cutoff (> peptides) for prior, default is 0
  type: boolean?
  inputBinding:
    prefix: --linear-cutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory of proximity files\nOPTIONAL"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- hotspot3d
- prep
