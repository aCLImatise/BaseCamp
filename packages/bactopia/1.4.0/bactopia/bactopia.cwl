class: CommandLineTool
id: bactopia.cwl
inputs:
- id: in_fast_qs
  doc: "An input file containing the sample name and\nabsolute paths to FASTQ/FASTAs\
    \ to process"
  type: File
  inputBinding:
    prefix: --fastqs
- id: in_r_one
  doc: "First set of reads for paired end in compressed (gzip)\nFASTQ format"
  type: long
  inputBinding:
    prefix: --R1
- id: in_r_two
  doc: "Second set of reads for paired end in compressed (gzip)\nFASTQ format"
  type: long
  inputBinding:
    prefix: --R2
- id: in_se
  doc: Single end set of reads in compressed (gzip) FASTQ format
  type: string
  inputBinding:
    prefix: --SE
- id: in_hybrid
  doc: The SE should be treated as long reads for hybrid assembly.
  type: boolean
  inputBinding:
    prefix: --hybrid
- id: in_sample
  doc: The name of the input sequences
  type: string
  inputBinding:
    prefix: --sample
- id: in_accessions
  doc: "An input file containing ENA/SRA Experiment accessions or\nNCBI Assembly accessions\
    \ to be processed"
  type: boolean
  inputBinding:
    prefix: --accessions
- id: in_accession
  doc: "A single ENA/SRA Experiment accession or NCBI Assembly accession\nto be processed"
  type: boolean
  inputBinding:
    prefix: --accession
- id: in_assembly
  doc: A assembled genome in compressed FASTA format.
  type: string
  inputBinding:
    prefix: --assembly
- id: in_reassemble
  doc: "The simulated reads will be used to create a new assembly.\nDefault: Use the\
    \ original assembly, do not reassemble"
  type: boolean
  inputBinding:
    prefix: --reassemble
- id: in_datasets
  doc: "The path to available datasets that have\nalready been set up"
  type: File
  inputBinding:
    prefix: --datasets
- id: in_species
  doc: "Determines which species-specific dataset to\nuse for the input sequencing"
  type: string
  inputBinding:
    prefix: --species
- id: in_coverage
  doc: "Reduce samples to a given coverage\nDefault: 100x"
  type: long
  inputBinding:
    prefix: --coverage
- id: in_genome_size
  doc: "Expected genome size (bp) for all samples, a value of '0'\nwill disable read\
    \ error correction and read subsampling.\nSpecial values (requires --species):\n\
    'min': uses minimum completed genome size of species\n'median': uses median completed\
    \ genome size of species\n'mean': uses mean completed genome size of species\n\
    'max': uses max completed genome size of species\nDefault: Mash estimate"
  type: long
  inputBinding:
    prefix: --genome_size
- id: in_outdir
  doc: "Directory to write results to\nDefault: ."
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_max_time
  doc: "The maximum number of minutes a single task should run before being halted.\n\
    Default: 240 minutes"
  type: long
  inputBinding:
    prefix: --max_time
- id: in_max_memory
  doc: "The maximum amount of memory (Gb) allowed to a single task.\nDefault: 64 Gb"
  type: long
  inputBinding:
    prefix: --max_memory
- id: in_cpus
  doc: "Number of processors made available to a single task.\nDefault: 4"
  type: long
  inputBinding:
    prefix: --cpus
- id: in_infodir
  doc: "Directory to write Nextflow summary files to\nDefault: ./bactopia-info"
  type: Directory
  inputBinding:
    prefix: --infodir
- id: in_cond_a_dir
  doc: "Directory to Nextflow should use for Conda environments\nDefault: Bactopia's\
    \ Nextflow directory"
  type: Directory
  inputBinding:
    prefix: --condadir
- id: in_nf_config
  doc: "A Nextflow compatible config file for custom profiles. This allows\nyou to\
    \ create profiles specific to your environment (e.g. SGE,\nAWS, SLURM, etc...).\
    \ This config file is loaded last and will\noverwrite existing variables if set.\n\
    Default: Bactopia's default configs"
  type: File
  inputBinding:
    prefix: --nfconfig
- id: in_nf_dir
  doc: Print directory Nextflow has pulled Bactopia to
  type: boolean
  inputBinding:
    prefix: --nfdir
- id: in_overwrite
  doc: "Nextflow will overwrite existing output files.\nDefault: false"
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_con_a_tainer_path
  doc: Path to Singularity containers to be used by the 'slurm'
  type: boolean
  inputBinding:
    prefix: --conatainerPath
- id: in_sleep_time
  doc: "After reading datases, the amount of time (seconds) Nextflow\nwill wait before\
    \ execution.\nDefault: 5 seconds"
  type: boolean
  inputBinding:
    prefix: --sleep_time
- id: in_publish_mode
  doc: "Set Nextflow's method for publishing output files. Allowed methods are:\n\
    'copy' (default)    Copies the output files into the published directory.\n'copyNoFollow'\
    \ Copies the output files into the published directory\nwithout following symlinks\
    \ ie. copies the links themselves.\n'link'    Creates a hard link in the published\
    \ directory for each\nprocess output file.\n'rellink' Creates a relative symbolic\
    \ link in the published directory\nfor each process output file.\n'symlink' Creates\
    \ an absolute symbolic link in the published directory\nfor each process output\
    \ file.\nDefault: copy"
  type: File
  inputBinding:
    prefix: --publish_mode
- id: in_force
  doc: "Nextflow will overwrite existing output files.\nDefault: false"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_resume
  doc: "Nextflow will attempt to resume a previous run. Please notice it is\nonly\
    \ a single '-'"
  type: boolean
  inputBinding:
    prefix: -resume
- id: in_available_datasets
  doc: "Print a list of available datasets found based\non location given by \"--datasets\""
  type: boolean
  inputBinding:
    prefix: --available_datasets
- id: in_example_fast_qs
  doc: Print example of expected input for FASTQs file
  type: boolean
  inputBinding:
    prefix: --example_fastqs
- id: in_check_fast_qs
  doc: Verify "--fastqs" produces the expected inputs
  type: boolean
  inputBinding:
    prefix: --check_fastqs
- id: in_compress
  doc: "Compress (gzip) select outputs (e.g. annotation, variant calls)\nto reduce\
    \ overall storage footprint."
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_keep_all_files
  doc: "Keeps all analysis files created. By default, intermediate\nfiles are removed.\
    \ This will not affect the ability\nto resume Nextflow runs, and only occurs at\
    \ the end\nof the process."
  type: boolean
  inputBinding:
    prefix: --keep_all_files
- id: in_dry_run
  doc: "Mimics workflow execution, to help determine if conda environments\nor container\
    \ images are properly set up."
  type: boolean
  inputBinding:
    prefix: --dry_run
- id: in_help_all
  doc: Show a complete list of adjustable parameters
  type: boolean
  inputBinding:
    prefix: --help_all
- id: in_profile_dot
  doc: 'Default: /opt/bactopia/singularity'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_publish_mode
  doc: "Set Nextflow's method for publishing output files. Allowed methods are:\n\
    'copy' (default)    Copies the output files into the published directory.\n'copyNoFollow'\
    \ Copies the output files into the published directory\nwithout following symlinks\
    \ ie. copies the links themselves.\n'link'    Creates a hard link in the published\
    \ directory for each\nprocess output file.\n'rellink' Creates a relative symbolic\
    \ link in the published directory\nfor each process output file.\n'symlink' Creates\
    \ an absolute symbolic link in the published directory\nfor each process output\
    \ file.\nDefault: copy"
  type: File
  outputBinding:
    glob: $(inputs.in_publish_mode)
cwlVersion: v1.1
baseCommand:
- bactopia
