class: CommandLineTool
id: mob_cluster.cwl
inputs:
- id: mode
  doc: 'Build: Create a new database from scratch, Update: Update an existing database
    with one or more sequences'
  type: string
  inputBinding:
    prefix: --mode
- id: outdir
  doc: Output Directory to put results
  type: string
  inputBinding:
    prefix: --outdir
- id: in_file
  doc: Input fasta file of one or more closed plasmids to process
  type: string
  inputBinding:
    prefix: --infile
- id: ref_cluster_file
  doc: Reference mob-cluster file
  type: string
  inputBinding:
    prefix: --ref_cluster_file
- id: ref_fast_a_file
  doc: Reference mob-cluster fasta file
  type: string
  inputBinding:
    prefix: --ref_fasta_file
- id: ref_mash_db
  doc: Reference mob-cluster mash sketch file
  type: string
  inputBinding:
    prefix: --ref_mash_db
- id: num_threads
  doc: Number of threads to be used
  type: string
  inputBinding:
    prefix: --num_threads
- id: overwrite
  doc: Overwrite the MOB-suite databases with results
  type: boolean
  inputBinding:
    prefix: --overwrite
outputs: []
cwlVersion: v1.1
baseCommand:
- mob_cluster
