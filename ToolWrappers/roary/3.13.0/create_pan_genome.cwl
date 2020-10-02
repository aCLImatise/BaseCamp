class: CommandLineTool
id: create_pan_genome.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: in_clusters_output_filename
  doc: clusters output filename [clustered_proteins]
  type: File
  inputBinding:
    prefix: -o
- id: in_output_directory
  doc: output directory [.]
  type: Directory
  inputBinding:
    prefix: -f
- id: in_create_multifasta_alignment
  doc: create a multiFASTA alignment of core genes
  type: boolean
  inputBinding:
    prefix: -e
- id: in_fast_core_gene
  doc: fast core gene alignement with MAFFT, use with -e
  type: boolean
  inputBinding:
    prefix: -n
- id: in_minimum_percentage_identity
  doc: minimum percentage identity for blastp [95]
  type: boolean
  inputBinding:
    prefix: -i
- id: in_cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -cd
- id: in_delete_intermediate_files
  doc: dont delete intermediate files
  type: boolean
  inputBinding:
    prefix: -z
- id: in_translation_table
  doc: translation table [11]
  type: long
  inputBinding:
    prefix: -t
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: in_add_information_work
  doc: add gene inference information to spreadsheet, doesnt work with -e
  type: boolean
  inputBinding:
    prefix: -y
- id: in_maximum_number_clusters
  doc: maximum number of clusters [50000]
  type: long
  inputBinding:
    prefix: -g
- id: in_qc
  doc: generate QC report with Kraken
  type: boolean
  inputBinding:
    prefix: -qc
- id: in_path_kraken_database
  doc: path to Kraken database for QC, use with -qc
  type: File
  inputBinding:
    prefix: -k
- id: in_print_version_exit
  doc: print version and exit
  type: boolean
  inputBinding:
    prefix: -w
- id: in_check_dependancies_versions
  doc: check dependancies and print versions
  type: boolean
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_clusters_output_filename
  doc: clusters output filename [clustered_proteins]
  type: File
  outputBinding:
    glob: $(inputs.in_clusters_output_filename)
- id: out_output_directory
  doc: output directory [.]
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- create_pan_genome
