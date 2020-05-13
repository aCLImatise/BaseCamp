class: CommandLineTool
id: methylpy_allc_to_bigwig.cwl
inputs:
- id: all_c_file
  doc: 'input allc file to be converted to bigwig format (default: None)'
  type: string
  inputBinding:
    prefix: --allc-file
- id: output_file
  doc: 'Name of output file (default: None)'
  type: string
  inputBinding:
    prefix: --output-file
- id: ref_fast_a
  doc: 'string indicating the path to a fasta file containing the genome sequences
    (default: None)'
  type: string
  inputBinding:
    prefix: --ref-fasta
- id: mc_type
  doc: "List of space separated mc nucleotide contexts for which you want to look\
    \ for DMRs. These classifications may use the wildcards H (indicating anything\
    \ but a G) and N (indicating any nucleotide). (default: ['CGN'])"
  type: string[]
  inputBinding:
    prefix: --mc-type
- id: bin_size
  doc: 'Genomic bin size for calculating methylation level (default: 100)'
  type: string
  inputBinding:
    prefix: --bin-size
- id: min_bin_sites
  doc: 'Minimum sites in a bin for it to be included. (default: 0)'
  type: long
  inputBinding:
    prefix: --min-bin-sites
- id: min_bin_cov
  doc: 'Minimum total coverage of all sites in a bin for methylation level to be calculated.
    (default: 0)'
  type: long
  inputBinding:
    prefix: --min-bin-cov
- id: min_site_cov
  doc: 'Minimum total coverage of a site for it to be included. (default: 0)'
  type: long
  inputBinding:
    prefix: --min-site-cov
- id: max_site_cov
  doc: 'Maximum total coverage of a site for it to be included. (default: None)'
  type: long
  inputBinding:
    prefix: --max-site-cov
- id: path_to_wig_to_bigwig
  doc: 'Path to wigToBigWig executable (default: )'
  type: File
  inputBinding:
    prefix: --path-to-wigToBigWig
- id: path_to_sam_tools
  doc: 'Path to samtools installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-samtools
- id: remove_chr_prefix
  doc: 'Boolean indicates whether to remove "chr" in the chromosome names in genome
    sequence file to match chromosome names in input allc file. (default: True)'
  type: string
  inputBinding:
    prefix: --remove-chr-prefix
- id: add_chr_prefix
  doc: 'Boolean indicates whether to add "chr" in the chromosome names in input allc
    file to match chromosome names in genome sequence file. This option overrides
    --remove-chr-prefix. (default: False)'
  type: string
  inputBinding:
    prefix: --add-chr-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- allc-to-bigwig
