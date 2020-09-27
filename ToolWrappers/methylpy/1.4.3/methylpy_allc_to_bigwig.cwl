class: CommandLineTool
id: methylpy_allc_to_bigwig.cwl
inputs:
- id: in_all_c_file
  doc: "input allc file to be converted to bigwig format\n(default: None)"
  type: File
  inputBinding:
    prefix: --allc-file
- id: in_output_file
  doc: 'Name of output file (default: None)'
  type: File
  inputBinding:
    prefix: --output-file
- id: in_ref_fast_a
  doc: "string indicating the path to a fasta file containing\nthe genome sequences\
    \ (default: None)"
  type: File
  inputBinding:
    prefix: --ref-fasta
- id: in_mc_type
  doc: "List of space separated mc nucleotide contexts for\nwhich you want to look\
    \ for DMRs. These classifications\nmay use the wildcards H (indicating anything\
    \ but a G)\nand N (indicating any nucleotide). (default: ['CGN'])"
  type: string[]
  inputBinding:
    prefix: --mc-type
- id: in_bin_size
  doc: "Genomic bin size for calculating methylation level\n(default: 100)"
  type: long
  inputBinding:
    prefix: --bin-size
- id: in_min_bin_sites
  doc: "Minimum sites in a bin for it to be included.\n(default: 0)"
  type: long
  inputBinding:
    prefix: --min-bin-sites
- id: in_min_bin_cov
  doc: "Minimum total coverage of all sites in a bin for\nmethylation level to be\
    \ calculated. (default: 0)"
  type: long
  inputBinding:
    prefix: --min-bin-cov
- id: in_min_site_cov
  doc: "Minimum total coverage of a site for it to be\nincluded. (default: 0)"
  type: long
  inputBinding:
    prefix: --min-site-cov
- id: in_max_site_cov
  doc: "Maximum total coverage of a site for it to be\nincluded. (default: None)"
  type: long
  inputBinding:
    prefix: --max-site-cov
- id: in_path_to_wig_to_bigwig
  doc: 'Path to wigToBigWig executable (default: )'
  type: File
  inputBinding:
    prefix: --path-to-wigToBigWig
- id: in_path_to_sam_tools
  doc: 'Path to samtools installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-samtools
- id: in_remove_chr_prefix
  doc: "Boolean indicates whether to remove \"chr\" in the\nchromosome names in genome\
    \ sequence file to match\nchromosome names in input allc file. (default: True)"
  type: boolean
  inputBinding:
    prefix: --remove-chr-prefix
- id: in_add_chr_prefix
  doc: "Boolean indicates whether to add \"chr\" in the\nchromosome names in input\
    \ allc file to match\nchromosome names in genome sequence file. This option\n\
    overrides --remove-chr-prefix. (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --add-chr-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Name of output file (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- methylpy
- allc-to-bigwig
