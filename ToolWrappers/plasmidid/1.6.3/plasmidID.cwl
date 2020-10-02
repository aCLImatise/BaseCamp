class: CommandLineTool
id: plasmidID.cwl
inputs:
- id: in_one
  doc: '| --R1       <filename>      reads corresponding to paired-end R1 (mandatory)'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '| --R2       <filename>      reads corresponding to paired-end R2 (mandatory)'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in__database_filename
  doc: '| --database <filename>      database to map and reconstruct (mandatory)'
  type: boolean
  inputBinding:
    prefix: -d
- id: in__sample_string
  doc: '| --sample   <string>        sample name (mandatory), less than 37 characters'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__group_string
  doc: '| --group    <string>        group name (optional). If unset, samples will
    be gathered in NO_GROUP group'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__contigs_filename
  doc: '| --contigs  <filename>      file with contigs. If supplied, plasmidID will
    not assembly reads'
  type: boolean
  inputBinding:
    prefix: -c
- id: in__annotate_filename
  doc: '| --annotate <filename>      file with configuration file for specific annotation'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_outputdir_output_directory
  doc: <output_dir>    output directory, by default is the current directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_explore
  doc: Relaxes default parameters to find less reliable relationships within data
    supplied and database
  type: boolean
  inputBinding:
    prefix: --explore
- id: in_only_reconstruct
  doc: "Database supplied will not be filtered and all sequences will be used as scaffold\n\
    This option does not require R1 and R2, instead a contig file can be supplied"
  type: boolean
  inputBinding:
    prefix: --only-reconstruct
- id: in_undo_winner_takes
  doc: Undo winner takes it all algorithm when clustering by kmer - QUICKER MODE
  type: boolean
  inputBinding:
    prefix: -w
- id: in_trim_mo_matic_directory
  doc: directory holding trimmomatic .jar executable
  type: Directory
  inputBinding:
    prefix: --trimmomatic-directory
- id: in_no_trim
  doc: Reads supplied will not be quality trimmed
  type: boolean
  inputBinding:
    prefix: --no-trim
- id: in__coveragecutoff_int
  doc: '| --coverage-cutoff  <int>   minimun coverage percentage to select a plasmid
    as scafold (0-100), default 80'
  type: boolean
  inputBinding:
    prefix: -C
- id: in__coveragesummary_int
  doc: '| --coverage-summary <int>   minimun coverage percentage to include plasmids
    in summary image (0-100), default 90'
  type: boolean
  inputBinding:
    prefix: -S
- id: in__cluster_int
  doc: '| --cluster  <int>   kmer identity to cluster plasmids into the same representative
    sequence (0 means identical) (0-1), default 0.5'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__kmer_int
  doc: '| --kmer     <int>   identity to filter plasmids from the database with kmer
    approach (0-1), default 0.95'
  type: boolean
  inputBinding:
    prefix: -k
- id: in__alignmentidentity_minimun
  doc: '| --alignment-identity <int> minimun identity percentage aligned for a contig
    to annotate, default 90'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__alignmentpercentage_minimun
  doc: '| --alignment-percentage <int>       minimun length percentage aligned for
    a contig to annotate, default 20'
  type: boolean
  inputBinding:
    prefix: -l
- id: in__lengthtotal_int
  doc: '| --length-total     <int>   minimun alignment length to filter blast analysis'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_extend_annotation
  doc: look for annotation over regions with no homology found (base pairs), default
    500bp
  type: long
  inputBinding:
    prefix: --extend-annotation
- id: in_config_directory
  doc: directory holding config files, default config_files/
  type: Directory
  inputBinding:
    prefix: --config-directory
- id: in_config_file_individual
  doc: file name of the individual file used to reconstruct
  type: File
  inputBinding:
    prefix: --config-file-individual
- id: in__memory_max
  doc: '| --memory   <int>   max memory allowed to use'
  type: boolean
  inputBinding:
    prefix: -M
- id: in__threads_int
  doc: '| --threads  <int>   number of threads'
  type: boolean
  inputBinding:
    prefix: -T
- id: in__version_version
  doc: '| --version          version'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputdir_output_directory
  doc: <output_dir>    output directory, by default is the current directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outputdir_output_directory)
cwlVersion: v1.1
baseCommand:
- plasmidID
