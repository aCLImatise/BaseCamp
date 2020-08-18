class: CommandLineTool
id: ../../../pan_genome_post_analysis.cwl
inputs:
- id: delete_intermediate_files
  doc: dont delete intermediate files
  type: boolean
  inputBinding:
    prefix: -a
- id: create_r_plots
  doc: dont create R plots
  type: boolean
  inputBinding:
    prefix: -b
- id: clusters_filename
  doc: clusters filename [_clustered.clstr]
  type: string
  inputBinding:
    prefix: -c
- id: cd
  doc: percentage of isolates a gene must be in to be core [0.99]
  type: double
  inputBinding:
    prefix: -cd
- id: do_split_groups
  doc: dont split groups
  type: boolean
  inputBinding:
    prefix: -d
- id: add_inference_values
  doc: add inference values to gene presence and absence spreadsheet
  type: boolean
  inputBinding:
    prefix: -e
- id: file_protein_filenames
  doc: file of protein filenames [_fasta_files]
  type: string
  inputBinding:
    prefix: -f
- id: maximum_number_clusters
  doc: maximum number of clusters [50000]
  type: long
  inputBinding:
    prefix: -g
- id: file_gff_filenames
  doc: file of GFF filenames [_gff_files]
  type: string
  inputBinding:
    prefix: -i
- id: core_gene_alignement
  doc: core gene alignement with PRANK
  type: boolean
  inputBinding:
    prefix: -m
- id: fast_core_gene
  doc: fast core gene alignement with MAFFT instead of PRANK
  type: boolean
  inputBinding:
    prefix: -n
- id: clusters_output_filename
  doc: clusters output filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -o
- id: output_pan_genome
  doc: output pan genome filename [pan_genome.fa]
  type: string
  inputBinding:
    prefix: -p
- id: allow_paralogs_core
  doc: allow paralogs in core alignment
  type: boolean
  inputBinding:
    prefix: -q
- id: output_gene_presence
  doc: output gene presence and absence filename [gene_presence_absence.csv]
  type: string
  inputBinding:
    prefix: -s
- id: translation_table
  doc: translation table [11]
  type: long
  inputBinding:
    prefix: -t
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -z
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- pan_genome_post_analysis
