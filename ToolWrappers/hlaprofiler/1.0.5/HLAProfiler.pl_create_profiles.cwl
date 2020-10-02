class: CommandLineTool
id: HLAProfiler.pl_create_profiles.cwl
inputs:
- id: in_reference
  doc: '|r    location of HLA reference fasta file.(required)'
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_output_dir
  doc: '|o           location of output directory(default:".")'
  type: Directory
  inputBinding:
    prefix: -output_dir
- id: in_database_dir
  doc: '|dd        location of database parent directory(default:".")'
  type: boolean
  inputBinding:
    prefix: -database_dir
- id: in_database_name
  doc: '|db       name of the HLA database to be created(default:hla)'
  type: boolean
  inputBinding:
    prefix: -database_name
- id: in_kraken_path
  doc: '|kp         base directory of kraken installation. (default:base directory
    of path returned by `which kraken`)'
  type: boolean
  inputBinding:
    prefix: -kraken_path
- id: in_num_reads
  doc: '|nr           number of reads to simulated per reference allele for k-mer
    profile creations.(default:500000)'
  type: boolean
  inputBinding:
    prefix: -num_reads
- id: in_read_length
  doc: '|rl         length of reads simulated for k-mer profile. Same as the length
    of the k-mers in the profile.(default:50)'
  type: boolean
  inputBinding:
    prefix: -read_length
- id: in_filter_reads
  doc: '|f         toggle whether or not to filter reads using in the HLA database
    when building the k-mer profile.It is STRONGLY recommended to use the default
    for this setting. Possibile values 0 or 1. (default:1)'
  type: boolean
  inputBinding:
    prefix: -filter_reads
- id: in_intermediate_files
  doc: '|if  toggles flag to keep intermediate files (default:off)'
  type: boolean
  inputBinding:
    prefix: -intermediate_files
- id: in_max_insert
  doc: '|mi          maximum size of insert (default:1000)'
  type: boolean
  inputBinding:
    prefix: -max_insert
- id: in_scale
  doc: '|sc               scale of pareto distribution to determine insert size (default:80)'
  type: boolean
  inputBinding:
    prefix: -scale
- id: in_shape
  doc: '|sh               shape of pareto distribution to determine insert size (default:0.7)'
  type: boolean
  inputBinding:
    prefix: -shape
- id: in_seed
  doc: seed of random number generator for simulation (default:1234)
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_threads
  doc: '|c              number of threads to uses for processing.(default:1)'
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hla_profiler_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_create_profile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: '|o           location of output directory(default:".")'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- create_profiles
