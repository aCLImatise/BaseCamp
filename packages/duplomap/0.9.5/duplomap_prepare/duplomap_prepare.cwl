class: CommandLineTool
id: duplomap_prepare.cwl
inputs:
- id: in_input
  doc: Csv file with segmental duplications
  type: File?
  inputBinding:
    prefix: --input
- id: in_reference
  doc: Reference genome in the indexed fasta format
  type: File?
  inputBinding:
    prefix: --reference
- id: in_annotate
  doc: 'Optional: gene annotation in the GFF format, used for database annotation'
  type: File?
  inputBinding:
    prefix: --annotate
- id: in_output
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_force
  doc: Force work with non-empty output directory
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_anchor
  doc: 'Anchor size [default: 6]'
  type: long?
  inputBinding:
    prefix: --anchor
- id: in_area
  doc: 'Anchor should be unique in the area with radius INT [default: 20]'
  type: long?
  inputBinding:
    prefix: --area
- id: in_length
  doc: "Discard duplication pairs if at least one of the sequences is shorter than\
    \ INT\n[default: 5000]"
  type: long?
  inputBinding:
    prefix: --length
- id: in_seq_similarity
  doc: "Discard duplication pairs with sequence similarity (fracMatch) less that FLOAT\n\
    [default: 0.97]"
  type: double?
  inputBinding:
    prefix: --seq-similarity
- id: in_minimap_km_er
  doc: 'Minimap2 k-mer size [default: 15]'
  type: long?
  inputBinding:
    prefix: --minimap-kmer
- id: in_window_size
  doc: 'Window size used for the identification of diverse regions [default: 100]'
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_min_windows
  doc: "Number of consecutive windows necessary to mark a region as similar or diverse\n\
    [default: 3]"
  type: long?
  inputBinding:
    prefix: --min-windows
- id: in_window_similarity
  doc: "Window similarity threshold (diverse regions have similarity lower than FLOAT)\n\
    [default: 95.0]"
  type: double?
  inputBinding:
    prefix: --window-similarity
- id: in_comp_dist
  doc: 'Distance between components containing segmental duplications [default: 500]'
  type: long?
  inputBinding:
    prefix: --comp-dist
- id: in_skip_copy_num
  doc: "<INT>    Do not analyze regions with copy number higher or equal than INT[1].\
    \ If region\nlength is less than INT[2], PSVs in the region are not constructed.\n\
    [default 6 3000]"
  type: long?
  inputBinding:
    prefix: --skip-copy-num
- id: in_log
  doc: "Logging level in log files (stderr shows logs with info level and higher)\n\
    [default: debug]  [possible values: trace, debug, info, warning, error, critical,\n\
    none]"
  type: string?
  inputBinding:
    prefix: --log
- id: in_human
  doc: Human readable database (currently cannot be loaded)
  type: boolean?
  inputBinding:
    prefix: --human
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_force
  doc: Force work with non-empty output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/duplomap:0.9.5--hed695b0_0
cwlVersion: v1.1
baseCommand:
- duplomap-prepare
