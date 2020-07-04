class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/create_pan_genome.cwl
inputs:
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: clusters_output_filename
  doc: clusters output filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -o
- id: output_directory
  doc: output directory [.]
  type: string
  inputBinding:
    prefix: -f
- id: create_multifasta_alignment
  doc: create a multiFASTA alignment of core genes
  type: boolean
  inputBinding:
    prefix: -e
- id: fast_core_gene
  doc: fast core gene alignement with MAFFT, use with -e
  type: boolean
  inputBinding:
    prefix: -n
- id: minimum_percentage_identity
  doc: minimum percentage identity for blastp [95]
  type: boolean
  inputBinding:
    prefix: -i
- id: cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -cd
- id: delete_intermediate_files
  doc: dont delete intermediate files
  type: boolean
  inputBinding:
    prefix: -z
- id: translation_table
  doc: translation table [11]
  type: long
  inputBinding:
    prefix: -t
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: add_inference_information
  doc: add gene inference information to spreadsheet, doesnt work with -e
  type: boolean
  inputBinding:
    prefix: -y
- id: maximum_number_clusters
  doc: maximum number of clusters [50000]
  type: long
  inputBinding:
    prefix: -g
- id: qc
  doc: generate QC report with Kraken
  type: boolean
  inputBinding:
    prefix: -qc
- id: path_kraken_database
  doc: path to Kraken database for QC, use with -qc
  type: string
  inputBinding:
    prefix: -k
- id: print_version_exit
  doc: print version and exit
  type: boolean
  inputBinding:
    prefix: -w
- id: check_dependancies_versions
  doc: check dependancies and print versions
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- create_pan_genome
