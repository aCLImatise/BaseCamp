class: CommandLineTool
id: HLAProfiler.pl_build_taxonomy.cwl
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
- id: in_output_dir
  doc: '|o           location of database directory(default:".")'
  type: boolean
  inputBinding:
    prefix: -output_dir
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
- id: in_k_mer
  doc: '|k                size of the k-mer used to create database.(default:31)'
  type: boolean
  inputBinding:
    prefix: -k_mer
- id: in_minimizer
  doc: '|m            size of the k-mer minimizer used to crate database.(default:13)'
  type: boolean
  inputBinding:
    prefix: -minimizer
- id: in_threads
  doc: '|c              number of threads to uses for processing.(default:1)'
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
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- build_taxonomy
