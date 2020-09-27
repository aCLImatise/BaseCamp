class: CommandLineTool
id: pan_genome_post_analysis.cwl
inputs:
- id: in_delete_intermediate_files
  doc: dont delete intermediate files
  type: boolean
  inputBinding:
    prefix: -a
- id: in_create_r_plots
  doc: dont create R plots
  type: boolean
  inputBinding:
    prefix: -b
- id: in_clusters_filename
  doc: clusters filename [_clustered.clstr]
  type: File
  inputBinding:
    prefix: -c
- id: in_cd
  doc: percentage of isolates a gene must be in to be core [0.99]
  type: double
  inputBinding:
    prefix: -cd
- id: in_do_split_groups
  doc: dont split groups
  type: boolean
  inputBinding:
    prefix: -d
- id: in_add_inference_values
  doc: add inference values to gene presence and absence spreadsheet
  type: boolean
  inputBinding:
    prefix: -e
- id: in_file_protein_filenames
  doc: file of protein filenames [_fasta_files]
  type: File
  inputBinding:
    prefix: -f
- id: in_maximum_number_clusters
  doc: maximum number of clusters [50000]
  type: long
  inputBinding:
    prefix: -g
- id: in_file_gff_filenames
  doc: file of GFF filenames [_gff_files]
  type: File
  inputBinding:
    prefix: -i
- id: in_core_gene_alignement
  doc: core gene alignement with PRANK
  type: boolean
  inputBinding:
    prefix: -m
- id: in_fast_core_gene
  doc: fast core gene alignement with MAFFT instead of PRANK
  type: boolean
  inputBinding:
    prefix: -n
- id: in_clusters_output_filename
  doc: clusters output filename [clustered_proteins]
  type: File
  inputBinding:
    prefix: -o
- id: in_output_pan_genome
  doc: output pan genome filename [pan_genome.fa]
  type: File
  inputBinding:
    prefix: -p
- id: in_allow_paralogs_core
  doc: allow paralogs in core alignment
  type: boolean
  inputBinding:
    prefix: -q
- id: in_output_gene_presence
  doc: output gene presence and absence filename [gene_presence_absence.csv]
  type: File
  inputBinding:
    prefix: -s
- id: in_translation_table
  doc: translation table [11]
  type: long
  inputBinding:
    prefix: -t
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -z
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_clusters_output_filename
  doc: clusters output filename [clustered_proteins]
  type: File
  outputBinding:
    glob: $(inputs.in_clusters_output_filename)
- id: out_output_pan_genome
  doc: output pan genome filename [pan_genome.fa]
  type: File
  outputBinding:
    glob: $(inputs.in_output_pan_genome)
- id: out_output_gene_presence
  doc: output gene presence and absence filename [gene_presence_absence.csv]
  type: File
  outputBinding:
    glob: $(inputs.in_output_gene_presence)
cwlVersion: v1.1
baseCommand:
- pan_genome_post_analysis
