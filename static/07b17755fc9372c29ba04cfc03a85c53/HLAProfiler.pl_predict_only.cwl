class: CommandLineTool
id: HLAProfiler.pl_predict_only.cwl
inputs:
- id: in_counts_directory
  doc: '|cd            location of directory containing filtered and paired read counts
    files. To generate these files from fastq files please run HLAProfiler.pl filter
    followed by HLAProfiler.pl count_reads (required)'
  type: boolean?
  inputBinding:
    prefix: -counts_directory
- id: in_reads_directory
  doc: '|cd             location of directory containing filtered and paired read
    fastqs.(required)'
  type: boolean?
  inputBinding:
    prefix: -reads_directory
- id: in_profile_directory
  doc: '|sdir         path to directory containing the profile files (required)'
  type: boolean?
  inputBinding:
    prefix: -profile_directory
- id: in_sample_name
  doc: '|sn                 name of the sample. This must perfect match the prefix
    of each of the read count files. i.e. The sample name for file NA12878.200.B_1.uniq.cnt
    would be NA12878.200 (required)'
  type: boolean?
  inputBinding:
    prefix: -sample_name
- id: in_reference
  doc: '|r                    HLA reference fasta. There must also be an allele map
    file in the sample directory as the reference fa. (required)'
  type: boolean?
  inputBinding:
    prefix: -reference
- id: in_allele_refinement
  doc: "|ar   Specifies the level to which the predicted alleles are to be refined\
    \ based on the observed reads (default:all)\nPossible values:\nrefine_only   \
    \          Refines the allelle call by looking predicting the true allele sequence\
    \ using observed reads and looking for a better match in the reference\npredict_only\
    \            Reports if the observe reads support a novel allele sequence not\
    \ found in the reference\nrefineAndPredict        Refines the allele call (-refine_only)\
    \ and report novel alleles (-novel_only)\nall                     Refines the\
    \ allele call (-refine_only) and report novel alleles (-novel_only), creates a\
    \ profile for the refined/novel allele sequence and calculates prediction metrics.\n\
    none                    Turns off refinement and novel allele prediction."
  type: boolean?
  inputBinding:
    prefix: -allele_refinement
- id: in_kraken_db
  doc: '|db           base directory of kraken database.'
  type: boolean?
  inputBinding:
    prefix: -kraken_db
- id: in_kraken_path
  doc: '|kp         base directory of kraken installation. (default:base directory
    of path returned by `which kraken`)'
  type: boolean?
  inputBinding:
    prefix: -kraken_path
- id: in_minimum_reads
  doc: '|min      minimum number of reads from a gene before attempting to call HLA
    types.(default:100)'
  type: boolean?
  inputBinding:
    prefix: -minimum_reads
- id: in_output_dir
  doc: "|od          output directory(default:'.')"
  type: Directory?
  inputBinding:
    prefix: -output_dir
- id: in_threads
  doc: '|c              number of threads (default:1)'
  type: boolean?
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
- id: in_predict
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
  doc: "|od          output directory(default:'.')"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- predict_only
