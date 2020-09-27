class: CommandLineTool
id: hotspot3d_uppro.cwl
inputs:
- id: in_output_dir
  doc: Output directory of proximity files
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_pdb_file_dir
  doc: PDB file directory
  type: boolean
  inputBinding:
    prefix: --pdb-file-dir
- id: in_measure
  doc: Distance measure between residues (shortest or average)
  type: boolean
  inputBinding:
    prefix: --measure
- id: in_parallel
  doc: "Parallelization to use (bsub, local, or none)\nuse bsub if you want to use\
    \ an LSF server\nuse local if you want to use your CPU (CAUTION: make sure you\
    \ know your max CPU processes)\nuse none if you want to run calpro for each protein\
    \ serially"
  type: boolean
  inputBinding:
    prefix: --parallel
- id: in_max_processes
  doc: 'Set if using parallel type local (CAUTION: make sure you know your max CPU
    processes)'
  type: boolean
  inputBinding:
    prefix: --max-processes
- id: in_gene_file
  doc: File with HUGO gene names in the first column (like a .maf)
  type: boolean
  inputBinding:
    prefix: --gene-file
- id: in_three_d_distance_cut_off
  doc: 'Maximum 3D distance (<= Angstroms), defaul: 100'
  type: boolean
  inputBinding:
    prefix: --3d-distance-cutoff
- id: in_linear_distance_cut_off
  doc: 'Minimum linear distance (> peptides), default: 0'
  type: boolean
  inputBinding:
    prefix: --linear-distance-cutoff
- id: in_cmd_list_submit_file
  doc: 'Batch jobs file to run calpro step in parallel, default: cmd_list_submit_file'
  type: boolean
  inputBinding:
    prefix: --cmd-list-submit-file
- id: in_hold
  doc: 'Do not submit batch jobs, just write cmd_list_submit_file, default: submits
    (takes no input)'
  type: boolean
  inputBinding:
    prefix: --hold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory of proximity files
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- hotspot3d
- uppro
