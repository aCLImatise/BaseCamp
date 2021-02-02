class: CommandLineTool
id: ../../../smeg_build_species.cwl
inputs:
- id: in_genomes_directory
  doc: Genomes directory
  type: boolean
  inputBinding:
    prefix: -g
- id: in_output_directory
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_file_listing_subset
  doc: "File listing a subset of genomes for database building\n[default = use all\
    \ genomes in 'Genomes directory']"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_number_of_threads
  doc: Number of threads [default 4]
  type: long
  inputBinding:
    prefix: -p
- id: in_snp_assignment_threshold
  doc: SNP assignment threshold (range 0.1 - 1) [default 0.6]
  type: double
  inputBinding:
    prefix: -s
- id: in_cluster_snps_threshold
  doc: Cluster SNPs threshold for iterative clustering [default 50]
  type: long
  inputBinding:
    prefix: -t
- id: in_ignore_iterative_clustering
  doc: Ignore iterative clustering
  type: boolean
  inputBinding:
    prefix: -i
- id: in_activate_automode
  doc: Activate auto-mode
  type: boolean
  inputBinding:
    prefix: -a
- id: in_representative_genome
  doc: Representative genome [default = auto select Rep genome]
  type: boolean
  inputBinding:
    prefix: -r
- id: in_keep_roary_output
  doc: Keep Roary output [default = false]
  type: boolean
  inputBinding:
    prefix: -k
- id: in_create_database_applicable
  doc: "Create database ONLY applicable with Reference-based SMEG method\n[default\
    \ = generate database suitable for both de novo and ref-based methods]"
  type: boolean
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- smeg
- build_species
