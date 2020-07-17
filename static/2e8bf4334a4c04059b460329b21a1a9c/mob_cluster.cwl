class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mob_cluster.cwl
inputs:
- id: mode
  doc: 'Build: Create a new database from scratch, Update: Update an existing database
    with one or more sequences'
  type: string
  inputBinding:
    prefix: --mode
- id: in_file
  doc: Fasta file of sequences to cluster
  type: string
  inputBinding:
    prefix: --infile
- id: mob_type_r_file
  doc: MOB-typer report file for new sequences
  type: string
  inputBinding:
    prefix: --mob_typer_file
- id: taxonomy
  doc: TSV file for new sequences with the fields "id, organism"
  type: string
  inputBinding:
    prefix: --taxonomy
- id: outdir
  doc: Output Directory to put results
  type: string
  inputBinding:
    prefix: --outdir
- id: ref_cluster_file
  doc: Existing MOB-cluster file to add the new sequences to
  type: string
  inputBinding:
    prefix: --ref_cluster_file
- id: ref_fast_a_file
  doc: Existing MOB-cluster fasta file of sequences contained in the MOB-cluster file
  type: string
  inputBinding:
    prefix: --ref_fasta_file
- id: num_threads
  doc: Number of threads to be used
  type: string
  inputBinding:
    prefix: --num_threads
- id: primary_cluster_dist
  doc: Mash distance for assigning primary cluster id 0 - 1
  type: string
  inputBinding:
    prefix: --primary_cluster_dist
- id: secondary_cluster_dist
  doc: Mash distance for assigning primary cluster id 0 - 1
  type: string
  inputBinding:
    prefix: --secondary_cluster_dist
- id: debug
  doc: Show debug information
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- mob_cluster
