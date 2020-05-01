#!/usr/bin/env cwl-runner

baseCommand:
- anvi-compute-gene-cluster-homogeneity
class: CommandLineTool
cwlVersion: v1.0
id: anvi-compute-gene-cluster-homogeneity
inputs:
- doc: Anvi'o pan database
  id: pan_db
  inputBinding:
    prefix: --pan-db
  type: string
- doc: Anvi'o genomes storage file
  id: genomes_storage
  inputBinding:
    prefix: --genomes-storage
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Store analysis results into the database directly.
  id: store_in_db
  inputBinding:
    prefix: --store-in-db
  type: boolean
- doc: Gene cluster ID you are interested in.
  id: gene_cluster_id
  inputBinding:
    prefix: --gene-cluster-id
  type: string
- doc: Text file for gene clusters (each line should contain be a unique gene cluster
    id).
  id: gene_cluster_ids_file
  inputBinding:
    prefix: --gene-cluster-ids-file
  type: File
- doc: Collection name.
  id: collection_name
  inputBinding:
    prefix: --collection-name
  type: string
- doc: Bin name you are interested in.
  id: bin_id
  inputBinding:
    prefix: --bin-id
  type: string
- doc: By default, anvi'o will use a homogeneity algorithm that checks for horizontal
    and vertical geometric homogeneity (along with functional). With this flag, you
    can tell anvi'o to skip horizontal geometric homogeneity calculations. It will
    be less accurate but quicker.
  id: quick_homogeneity
  inputBinding:
    prefix: --quick-homogeneity
  type: boolean
- doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
