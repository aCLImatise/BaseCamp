class: CommandLineTool
id: HLAProfiler.pl_build.cwl
inputs:
- id: in_transcripts
  doc: '|t          location of fasta file containing transcripts. Currently only
    GENCODE transcripts are supported.(required)'
  type: boolean
  inputBinding:
    prefix: -transcripts
- id: in_transcript_gtf
  doc: '|g       location of gtf file containing transcripts corresponding to the
    -transcripts option. Currently only GENCODE transcripts are supported.(required)'
  type: boolean
  inputBinding:
    prefix: -transcript_gtf
- id: in_exclusion_bed
  doc: '|e        location of bed file containing the coordinated any regions to be
    excluded from the distractome. i.e. HLA region.(required)'
  type: boolean
  inputBinding:
    prefix: -exclusion_bed
- id: in_reference
  doc: '|r            location of fasta file containing HLA reference. IPD-IMGT/HLA
    reference recommended.(required)'
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_cwd
  doc: File containing the names of common and well-documented alleles. This file
    can be blank but must be specified.(required)
  type: boolean
  inputBinding:
    prefix: -cwd
- id: in_output_dir
  doc: '|o           location of output directory(default:".")'
  type: Directory
  inputBinding:
    prefix: -output_dir
- id: in_database_name
  doc: '|db       name of the HLA database to be created(default:hla)'
  type: boolean
  inputBinding:
    prefix: -database_name
- id: in_kraken_path
  doc: '|kp base directory of kraken installation. (default:base directory of path
    returned by `which kraken`)'
  type: boolean
  inputBinding:
    prefix: -kraken_path
- id: in_k_mer
  doc: '|k                size of the k-mer used to create database.(default:31)'
  type: boolean
  inputBinding:
    prefix: -k_mer
- id: in_minimizer
  doc: '|mi           size of the k-mer minimizer used to crate database.(default:13)'
  type: boolean
  inputBinding:
    prefix: -minimizer
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
- id: in_max_insert
  doc: '|m           maximum size of insert (default:1000)'
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
  doc: '|sd                seed of random number generator for simulation (default:1234)'
  type: boolean
  inputBinding:
    prefix: -seed
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
- id: in_threads
  doc: '|c      number of threads to uses for processing.(default:1)'
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- build
