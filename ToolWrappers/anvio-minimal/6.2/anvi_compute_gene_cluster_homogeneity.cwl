class: CommandLineTool
id: anvi_compute_gene_cluster_homogeneity.cwl
inputs:
- id: in_pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: in_genomes_storage
  doc: Anvi'o genomes storage file
  type: File
  inputBinding:
    prefix: --genomes-storage
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_store_in_db
  doc: Store analysis results into the database directly.
  type: boolean
  inputBinding:
    prefix: --store-in-db
- id: in_gene_cluster_id
  doc: Gene cluster ID you are interested in.
  type: string
  inputBinding:
    prefix: --gene-cluster-id
- id: in_gene_cluster_ids_file
  doc: "Text file for gene clusters (each line should contain\nbe a unique gene cluster\
    \ id)."
  type: File
  inputBinding:
    prefix: --gene-cluster-ids-file
- id: in_collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: in_bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: in_quick_homogeneity
  doc: "By default, anvi'o will use a homogeneity algorithm\nthat checks for horizontal\
    \ and vertical geometric\nhomogeneity (along with functional). With this flag,\n\
    you can tell anvi'o to skip horizontal geometric\nhomogeneity calculations. It\
    \ will be less accurate but\nquicker."
  type: boolean
  inputBinding:
    prefix: --quick-homogeneity
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast."
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit.\n"
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-compute-gene-cluster-homogeneity
