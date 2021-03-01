class: CommandLineTool
id: mob_cluster.cwl
inputs:
- id: in_mode
  doc: "Build: Create a new database from scratch, Update:\nUpdate an existing database\
    \ with one or more sequences"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_in_file
  doc: Fasta file of sequences to cluster
  type: File?
  inputBinding:
    prefix: --infile
- id: in_mob_type_r_file
  doc: MOB-typer report file for new sequences
  type: File?
  inputBinding:
    prefix: --mob_typer_file
- id: in_taxonomy
  doc: "TSV file for new sequences with the fields \"id,\norganism\""
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_outdir
  doc: Output Directory to put results
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_ref_cluster_file
  doc: Existing MOB-cluster file to add the new sequences to
  type: File?
  inputBinding:
    prefix: --ref_cluster_file
- id: in_ref_fast_a_file
  doc: "Existing MOB-cluster fasta file of sequences contained\nin the MOB-cluster\
    \ file"
  type: File?
  inputBinding:
    prefix: --ref_fasta_file
- id: in_num_threads
  doc: Number of threads to be used
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_primary_cluster_dist
  doc: Mash distance for assigning primary cluster id 0 - 1
  type: long?
  inputBinding:
    prefix: --primary_cluster_dist
- id: in_secondary_cluster_dist
  doc: Mash distance for assigning primary cluster id 0 - 1
  type: long?
  inputBinding:
    prefix: --secondary_cluster_dist
- id: in_debug
  doc: Show debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_three_dot_zero_dot_zero
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output Directory to put results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mob_suite:3.0.1--py_0
cwlVersion: v1.1
baseCommand:
- mob_cluster
