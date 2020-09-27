class: CommandLineTool
id: HLAProfiler.pl_predict.cwl
inputs:
- id: in_fast_q_one
  doc: '|fq1             location of read1 fastq (required)'
  type: boolean
  inputBinding:
    prefix: -fastq1
- id: in_fast_q_two
  doc: '|fq2             location of read2 fastq (required)'
  type: boolean
  inputBinding:
    prefix: -fastq2
- id: in_database_name
  doc: '|db       name of HLA database (required)'
  type: boolean
  inputBinding:
    prefix: -database_name
- id: in_directory_dir
  doc: '|dd       name of parent directory of database (required)'
  type: boolean
  inputBinding:
    prefix: -directory_dir
- id: in_reference
  doc: '|r    reference fa used to create the database (required)'
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_allele_refinement
  doc: "|ar   Specifies the level to which the predicted alleles are to be refined\
    \ based on the observed reads (default:all)\nPossible values:\nrefine_only   \
    \  Refines the allelle call by looking predicting the true allele sequence using\
    \ observed reads and looking for a better match in the reference\npredict_only\
    \    Reports if the observe reads support a novel allele sequence not found in\
    \ the reference\nrefineAndPredict        Refines the allele call (-refine_only)\
    \ and report novel alleles (-novel_only)\nall             Refines the allele call\
    \ (-refine_only) and report novel alleles (-novel_only), creates a profile for\
    \ the refined/novel allele sequence and calculates prediction metrics.\nnone \
    \           Turns off refinement and novel allele prediction."
  type: boolean
  inputBinding:
    prefix: -allele_refinement
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
- id: in_intermediate_files
  doc: '|if  toggles flag to keep intermediate files (default:off)'
  type: boolean
  inputBinding:
    prefix: -intermediate_files
- id: in_minimum_reads
  doc: '|min      minimum number of reads from a gene before attempting to call HLA
    types.(default:100)'
  type: boolean
  inputBinding:
    prefix: -minimum_reads
- id: in_threads
  doc: '|c              number of threads (default:1)'
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_output_dir
  doc: '|od          output directory (default:" .")'
  type: Directory
  inputBinding:
    prefix: -output_dir
- id: in_kraken_path
  doc: '|kp         base directory of kraken installation. (default:base directory
    of path returned by `which kraken`)'
  type: boolean
  inputBinding:
    prefix: -kraken_path
- id: in_log
  doc: '|l                  name of the prediction log file'
  type: boolean
  inputBinding:
    prefix: -log
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
  doc: '|od          output directory (default:" .")'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- predict
