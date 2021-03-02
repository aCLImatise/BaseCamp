class: CommandLineTool
id: smeg_growth_est.cwl
inputs:
- id: in_reads_directory_reads
  doc: Reads directory (single-end reads)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_sample_filename_extension
  doc: Sample filename extension (fq, fastq, fastq.gz) [default fastq]
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_output_directory
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_species_database_directory
  doc: Species database directory
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_int_smeg_method
  doc: INT    SMEG method (0 = de novo-based method, 1 = reference-based method) [default
    = 0]
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_float_coverage_cutoff
  doc: FLOAT  Coverage cutoff (>= 0.5) [default 0.5]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_int_minimum_number
  doc: INT    Minimum number of SNPs to estimate growth rate [default = 100]
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_path_file_listing
  doc: "Path to file listing a subset of reads for analysis\n[default = analyze all\
    \ samples in Reads directory]"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_float_cluster_detection
  doc: FLOAT  Cluster detection threshold (range 0.1 - 1) [default = 0.2]
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_float_samplespecific_snp
  doc: FLOAT  Sample-specific SNP assignment threshold (range 0.1 - 1) [default =
    0.6]
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_file_listing_reference
  doc: File listing reference genomes for growth rate estimation
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_file_listing_path
  doc: File listing FULL PATH to DESMAN-resolved strains in fasta format (core-genes)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_int_max_number
  doc: INT    Max number of mismatch [default = use default bowtie2 threshold]
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_merge_output_tables
  doc: merge output tables into a single matrix file and generate heatmap
  type: File?
  inputBinding:
    prefix: -e
- id: in_int_number_threads
  doc: INT    Number of threads [default 4]
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_merge_output_tables
  doc: merge output tables into a single matrix file and generate heatmap
  type: File?
  outputBinding:
    glob: $(inputs.in_merge_output_tables)
hints: []
cwlVersion: v1.1
baseCommand:
- smeg
- growth_est
