class: CommandLineTool
id: anvi_compute_gene_cluster_homogeneity.cwl
inputs:
- id: pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: genomes_storage
  doc: Anvi'o genomes storage file
  type: string
  inputBinding:
    prefix: --genomes-storage
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: store_in_db
  doc: Store analysis results into the database directly.
  type: boolean
  inputBinding:
    prefix: --store-in-db
- id: gene_cluster_id
  doc: Gene cluster ID you are interested in.
  type: string
  inputBinding:
    prefix: --gene-cluster-id
- id: gene_cluster_ids_file
  doc: Text file for gene clusters (each line should contain be a unique gene cluster
    id).
  type: File
  inputBinding:
    prefix: --gene-cluster-ids-file
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: quick_homogeneity
  doc: By default, anvi'o will use a homogeneity algorithm that checks for horizontal
    and vertical geometric homogeneity (along with functional). With this flag, you
    can tell anvi'o to skip horizontal geometric homogeneity calculations. It will
    be less accurate but quicker.
  type: boolean
  inputBinding:
    prefix: --quick-homogeneity
- id: num_threads
  doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  type: string
  inputBinding:
    prefix: --num-threads
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-compute-gene-cluster-homogeneity
