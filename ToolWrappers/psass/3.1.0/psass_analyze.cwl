class: CommandLineTool
id: psass_analyze.cwl
inputs:
- id: in_pool_one
  doc: TEXT         Name of the first pool (order in the pileup file)                        [females]
  type: boolean?
  inputBinding:
    prefix: --pool1
- id: in_pool_two
  doc: TEXT         Name of the second pool (order in the pileup file)                       [males]
  type: boolean?
  inputBinding:
    prefix: --pool2
- id: in_po_pool_ation
  doc: If set, assumes the input file was generated with popoolation2
  type: boolean?
  inputBinding:
    prefix: --popoolation
- id: in_snp_file
  doc: TEXT         Output sex-biased SNPs to this file
  type: File?
  inputBinding:
    prefix: --snp-file
- id: in_fst_file
  doc: TEXT         Output high FST positions to this file
  type: File?
  inputBinding:
    prefix: --fst-file
- id: in_genes_file
  doc: TEXT         Output gene metrics to this file (requires a GFF file)
  type: File?
  inputBinding:
    prefix: --genes-file
- id: in_gff_file
  doc: TEXT         Path to a GFF file for gene-specific output
  type: File?
  inputBinding:
    prefix: --gff-file
- id: in_min_depth
  doc: UINT         Minimum depth to include a site in the analyses                          [10]
  type: boolean?
  inputBinding:
    prefix: --min-depth
- id: in_window_size
  doc: UINT         Size of the sliding window (in bp)                                       [100000]
  type: boolean?
  inputBinding:
    prefix: --window-size
- id: in_output_resolution
  doc: UINT         Output resolution for sliding window metrics (in bp)                     [10000]
  type: boolean?
  inputBinding:
    prefix: --output-resolution
- id: in_freq_het
  doc: FLOAT        Frequency of a sex-linked SNP in the heterogametic sex                   [0.5]
  type: boolean?
  inputBinding:
    prefix: --freq-het
- id: in_range_het
  doc: FLOAT        Range of frequency for a sex-linked SNP in the heterogametic sex         [0.15]
  type: boolean?
  inputBinding:
    prefix: --range-het
- id: in_freq_hom
  doc: FLOAT        Frequency of a sex-linked SNP in the homogametic sex                     [1]
  type: boolean?
  inputBinding:
    prefix: --freq-hom
- id: in_range_hom
  doc: FLOAT        Range of frequency for a sex-linked SNP in the homogametic sex           [0.05]
  type: boolean?
  inputBinding:
    prefix: --range-hom
- id: in_min_fst
  doc: FLOAT        Minimum FST to output a site in the FST positions file                   [0.1]
  type: boolean?
  inputBinding:
    prefix: --min-fst
- id: in_group_snps
  doc: If set, group consecutive snps to count them as a single polymorphism
  type: boolean?
  inputBinding:
    prefix: --group-snps
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_snp_file
  doc: TEXT         Output sex-biased SNPs to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_snp_file)
- id: out_fst_file
  doc: TEXT         Output high FST positions to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_fst_file)
- id: out_genes_file
  doc: TEXT         Output gene metrics to this file (requires a GFF file)
  type: File?
  outputBinding:
    glob: $(inputs.in_genes_file)
- id: out_gff_file
  doc: TEXT         Path to a GFF file for gene-specific output
  type: File?
  outputBinding:
    glob: $(inputs.in_gff_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psass:3.1.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- psass
- analyze
