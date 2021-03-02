class: CommandLineTool
id: genometreetk_bootstrap.cwl
inputs:
- id: in_boot_dir
  doc: "directory containing pre-computed bootstrap trees\n(must have '.tree', '.tre',\
    \ or '.treefile' extension)"
  type: Directory?
  inputBinding:
    prefix: --boot_dir
- id: in_base_type
  doc: "indicates if bases are nucleotides or amino acids\n(default: prot)"
  type: string?
  inputBinding:
    prefix: --base_type
- id: in_model
  doc: 'model of evolution to use (default: wag)'
  type: string?
  inputBinding:
    prefix: --model
- id: in_gamma
  doc: indicates that the GAMMA model should be used
  type: boolean?
  inputBinding:
    prefix: --gamma
- id: in_num_replicates
  doc: "number of bootstrap replicates to perform (default:\n100)"
  type: long?
  inputBinding:
    prefix: --num_replicates
- id: in_fraction
  doc: 'fraction of alignment to subsample (default: 1.0)'
  type: double?
  inputBinding:
    prefix: --fraction
- id: in_cpus
  doc: 'number of cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_input_tree
  doc: tree inferred from original data
  type: string
  inputBinding:
    position: 0
- id: in_msa_file
  doc: "file containing multiple sequence alignment (or 'NONE'\nif '--boot_dir' is\
    \ given)"
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: output directory
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
- genometreetk
- bootstrap
