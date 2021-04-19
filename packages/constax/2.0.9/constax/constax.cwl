class: CommandLineTool
id: constax.cwl
inputs:
- id: in_conf
  doc: 'Classification confidence threshold (default: 0.8)'
  type: double?
  inputBinding:
    prefix: --conf
- id: in_num_threads
  doc: 'directory to for output files (default: 1)'
  type: Directory?
  inputBinding:
    prefix: --num_threads
- id: in_m_hits
  doc: "Maximum number of BLAST hits to use, for use with -b\noption (default: 10)"
  type: long?
  inputBinding:
    prefix: --mhits
- id: in_evalue
  doc: "Maximum expect value of BLAST hits to use, for use\nwith -b option (default:\
    \ 1.0)"
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_p_iden
  doc: "Minimum proportion identity of BLAST hits to use, for\nuse with -b option\
    \ (default: 0.0)"
  type: double?
  inputBinding:
    prefix: --p_iden
- id: in_db
  doc: "Database to train classifiers, in FASTA format\n(default: )"
  type: string?
  inputBinding:
    prefix: --db
- id: in_train_file
  doc: "Path to which training files will be written (default:\n./training_files)"
  type: File?
  inputBinding:
    prefix: --trainfile
- id: in_input
  doc: "Input file in FASTA format containing sequence records\nto classify (default:\
    \ otus.fasta)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Output directory for classifications (default:\n./outputs)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_tax
  doc: "Directory for taxonomy assignments (default:\n./taxonomy_assignments)"
  type: Directory?
  inputBinding:
    prefix: --tax
- id: in_train
  doc: 'Complete training if specified (default: False)'
  type: boolean?
  inputBinding:
    prefix: --train
- id: in_blast
  doc: "Use BLAST instead of UTAX if specified (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --blast
- id: in_select_by_keyword
  doc: "Takes a keyword argument and --input FASTA file to\nproduce a filtered database\
    \ with headers containing\nthe keyword with name --output (default: False)"
  type: File?
  inputBinding:
    prefix: --select_by_keyword
- id: in_msu_hpcc
  doc: "If specified, use executable paths on Michigan State\nUniversity HPCC. Overrides\
    \ other path arguments\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --msu_hpcc
- id: in_conservative
  doc: "If specified, use conservative consensus rule (2 False\n= False winner) (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --conservative
- id: in_make_plot
  doc: "If specified, run R script to make plot of classified\ntaxa (default: False)"
  type: boolean?
  inputBinding:
    prefix: --make_plot
- id: in_check
  doc: "If specified, runs checks but stops before training or\nclassifying (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_mem
  doc: "Memory available to use for RDP, in MB. 32000MB\nrecommended for UNITE, 128000MB\
    \ for SILVA (default:\n32000)"
  type: long?
  inputBinding:
    prefix: --mem
- id: in_sin_tax_path
  doc: "Path to USEARCH/VSEARCH executable for SINTAX\nclassification (default: False)"
  type: File?
  inputBinding:
    prefix: --sintax_path
- id: in_u_tax_path
  doc: "Path to USEARCH executable for UTAX classification\n(default: False)"
  type: File?
  inputBinding:
    prefix: --utax_path
- id: in_rdp_path
  doc: 'Path to RDP classifier.jar file (default: False)'
  type: File?
  inputBinding:
    prefix: --rdp_path
- id: in_cons_tax_path
  doc: 'Path to CONSTAX scripts (default: False)'
  type: File?
  inputBinding:
    prefix: --constax_path
- id: in_path_file
  doc: "File with paths to SINTAX, UTAX, RDP, and CONSTAX\nexecutables (default: pathfile.txt)"
  type: File?
  inputBinding:
    prefix: --pathfile
- id: in_isolates
  doc: "FASTA formatted file of isolates to use BLAST against\n(default: False)"
  type: File?
  inputBinding:
    prefix: --isolates
- id: in_isolates_query_coverage
  doc: "Threshold of sequence query coverage to report isolate\nmatches (default:\
    \ 75)"
  type: long?
  inputBinding:
    prefix: --isolates_query_coverage
- id: in_isolates_percent_identity
  doc: "Threshold of aligned sequence percent identity to\nreport isolate matches\
    \ (default: 1)"
  type: long?
  inputBinding:
    prefix: --isolates_percent_identity
- id: in_high_level_db
  doc: "FASTA database file of representative sequences for\nassignment of high level\
    \ taxonomy (default: False)"
  type: File?
  inputBinding:
    prefix: --high_level_db
- id: in_high_level_query_coverage
  doc: "Threshold of sequence query coverage to report high-\nlevel taxonomy matches\
    \ (default: 75)"
  type: long?
  inputBinding:
    prefix: --high_level_query_coverage
- id: in_high_level_percent_identity
  doc: "Threshold of aligned sequence percent identity to\nreport high-level taxonomy\
    \ matches (default: 1)"
  type: long?
  inputBinding:
    prefix: --high_level_percent_identity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_num_threads
  doc: 'directory to for output files (default: 1)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_num_threads)
- id: out_output
  doc: "Output directory for classifications (default:\n./outputs)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/constax:2.0.9--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- constax
