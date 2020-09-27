class: CommandLineTool
id: gubbins.cwl
inputs:
- id: in_newick_tree_file
  doc: Newick tree file
  type: boolean
  inputBinding:
    prefix: -t
- id: in_vcf_file
  doc: VCF file
  type: boolean
  inputBinding:
    prefix: -v
- id: in_original_multifasta_file
  doc: Original Multifasta file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_min_snps_identifying
  doc: Min SNPs for identifying a recombination block
  type: boolean
  inputBinding:
    prefix: -m
- id: in_min_window_size
  doc: Min window size
  type: boolean
  inputBinding:
    prefix: -a
- id: in_max_window_size
  doc: Max window size
  type: boolean
  inputBinding:
    prefix: -b
- id: in_two_dot_four_dot_one
  doc: -r    detect recombinations mode
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gubbins
