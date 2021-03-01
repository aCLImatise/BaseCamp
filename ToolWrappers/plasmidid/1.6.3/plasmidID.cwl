class: CommandLineTool
id: plasmidID.cwl
inputs:
- id: in_r_one
  doc: <filename>      reads corresponding to paired-end R1 (mandatory)
  type: boolean?
  inputBinding:
    prefix: --R1
- id: in_r_two
  doc: <filename>      reads corresponding to paired-end R2 (mandatory)
  type: boolean?
  inputBinding:
    prefix: --R2
- id: in_database
  doc: database to map and reconstruct (mandatory)
  type: File?
  inputBinding:
    prefix: --database
- id: in_sample
  doc: <string>        sample name (mandatory), less than 37 characters
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_group
  doc: <string>        group name (optional). If unset, samples will be gathered in
    NO_GROUP group
  type: boolean?
  inputBinding:
    prefix: --group
- id: in_contigs
  doc: <filename>      file with contigs. If supplied, plasmidID will not assembly
    reads
  type: boolean?
  inputBinding:
    prefix: --contigs
- id: in_annotate
  doc: file with configuration file for specific annotation
  type: File?
  inputBinding:
    prefix: --annotate
- id: in_outputdir_output_directory
  doc: <output_dir>    output directory, by default is the current directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_explore
  doc: Relaxes default parameters to find less reliable relationships within data
    supplied and database
  type: boolean?
  inputBinding:
    prefix: --explore
- id: in_only_reconstruct
  doc: "Database supplied will not be filtered and all sequences will be used as scaffold\n\
    This option does not require R1 and R2, instead a contig file can be supplied"
  type: boolean?
  inputBinding:
    prefix: --only-reconstruct
- id: in_undo_winner_takes
  doc: Undo winner takes it all algorithm when clustering by kmer - QUICKER MODE
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_trim_mo_matic_directory
  doc: directory holding trimmomatic .jar executable
  type: Directory?
  inputBinding:
    prefix: --trimmomatic-directory
- id: in_no_trim
  doc: Reads supplied will not be quality trimmed
  type: boolean?
  inputBinding:
    prefix: --no-trim
- id: in_coverage_cut_off
  doc: <int>   minimun coverage percentage to select a plasmid as scafold (0-100),
    default 80
  type: boolean?
  inputBinding:
    prefix: --coverage-cutoff
- id: in_coverage_summary
  doc: minimun coverage percentage to include plasmids in summary image (0-100), default
    90
  type: long?
  inputBinding:
    prefix: --coverage-summary
- id: in_cluster
  doc: <int>   kmer identity to cluster plasmids into the same representative sequence
    (0 means identical) (0-1), default 0.5
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_km_er
  doc: <int>   identity to filter plasmids from the database with kmer approach (0-1),
    default 0.95
  type: boolean?
  inputBinding:
    prefix: --kmer
- id: in_alignment_identity
  doc: minimun identity percentage aligned for a contig to annotate, default 90
  type: long?
  inputBinding:
    prefix: --alignment-identity
- id: in_alignment_percentage
  doc: minimun length percentage aligned for a contig to annotate, default 20
  type: long?
  inputBinding:
    prefix: --alignment-percentage
- id: in_length_total
  doc: <int>   minimun alignment length to filter blast analysis
  type: boolean?
  inputBinding:
    prefix: --length-total
- id: in_extend_annotation
  doc: look for annotation over regions with no homology found (base pairs), default
    500bp
  type: long?
  inputBinding:
    prefix: --extend-annotation
- id: in_config_directory
  doc: directory holding config files, default config_files/
  type: Directory?
  inputBinding:
    prefix: --config-directory
- id: in_config_file_individual
  doc: file name of the individual file used to reconstruct
  type: File?
  inputBinding:
    prefix: --config-file-individual
- id: in_memory
  doc: <int>   max memory allowed to use
  type: boolean?
  inputBinding:
    prefix: --memory
- id: in_threads
  doc: <int>   number of threads
  type: boolean?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputdir_output_directory
  doc: <output_dir>    output directory, by default is the current directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outputdir_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- plasmidID
