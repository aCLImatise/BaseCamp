class: CommandLineTool
id: csb_hhfrag.cwl
inputs:
- id: in_hh_search
  doc: path to the HHsearch executable (default=hhsearch)
  type: File?
  inputBinding:
    prefix: --hhsearch
- id: in_database
  doc: database directory (containing PDBS25.hhm)
  type: Directory?
  inputBinding:
    prefix: --database
- id: in_min
  doc: minimum query segment length (default=6)
  type: long?
  inputBinding:
    prefix: --min
- id: in_max
  doc: maximum query segment length (default=21)
  type: long?
  inputBinding:
    prefix: --max
- id: in_step
  doc: query segmentation step (default=3)
  type: long?
  inputBinding:
    prefix: --step
- id: in_cpu
  doc: maximum degree of parallelism (default=8)
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_gap_filling
  doc: "path to a fragment file (e.g. CSfrag or Rosetta\nNNmake), which will be used\
    \ to complement low-\nconfidence regions (when specified, a hybrid fragment\n\
    library be produced)"
  type: File?
  inputBinding:
    prefix: --gap-filling
- id: in_filtered_filling
  doc: "path to a filtered fragment file (e.g. filtered\nCSfrag-ments), which will\
    \ be mixed with the HHfrag-set\nand then filtered, resulting in a double-filtered\n\
    library"
  type: File?
  inputBinding:
    prefix: --filtered-filling
- id: in_filtered_map
  doc: "make an additional filtered fragment map of centroids\nand predict torsion\
    \ angles (default=False)"
  type: boolean?
  inputBinding:
    prefix: --filtered-map
- id: in_c_alpha
  doc: "include also C-alpha vectors in the output\n(default=False)"
  type: boolean?
  inputBinding:
    prefix: --c-alpha
- id: in_confidence_threshold
  doc: confidence threshold for gap filling (default=0.7)
  type: double?
  inputBinding:
    prefix: --confidence-threshold
- id: in_verbosity
  doc: verbosity level (default=2)
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_output
  doc: "output directory (default=.)\n"
  type: Directory?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output directory (default=.)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- csb-hhfrag
