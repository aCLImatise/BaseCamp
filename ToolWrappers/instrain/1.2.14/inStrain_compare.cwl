class: CommandLineTool
id: inStrain_compare.cwl
inputs:
- id: in_list_instrain_none
  doc: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]]\nA list of inStrain objects,\
    \ all mapped to the same\n.fasta file (default: None)"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output
  doc: 'Output prefix (default: instrainComparer)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_processes
  doc: 'Number of processes to use (default: 6)'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_min_cov
  doc: 'Minimum coverage to call an variant (default: 5)'
  type: long?
  inputBinding:
    prefix: --min_cov
- id: in_min_freq
  doc: "Minimum SNP frequency to confirm a SNV (both this AND\nthe FDR snp count cutoff\
    \ must be true to call a SNP).\n(default: 0.05)"
  type: long?
  inputBinding:
    prefix: --min_freq
- id: in_fdr
  doc: "SNP false discovery rate- based on simulation data\nwith a 0.1 percent error\
    \ rate (Q30) (default: 1e-06)"
  type: double?
  inputBinding:
    prefix: --fdr
- id: in_scaffolds
  doc: "Location to a list of scaffolds to compare. You can\nalso make this a .fasta\
    \ file and it will load the\nscaffold names (default: None)"
  type: File?
  inputBinding:
    prefix: --scaffolds
- id: in_store_coverage_overlap
  doc: "Also store coverage overlap on an mm level (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --store_coverage_overlap
- id: in_store_mismatch_locations
  doc: 'Store the locations of SNPs (default: False)'
  type: boolean?
  inputBinding:
    prefix: --store_mismatch_locations
- id: in_include_self_comparisons
  doc: "Also compare IS profiles against themself (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --include_self_comparisons
- id: in_greedy_clustering
  doc: "Dont do pair-wise comparisons, do greedy clustering to\nonly find the number\
    \ of clsuters. If this is set, use\nthe parameters below as well (default: False)"
  type: boolean?
  inputBinding:
    prefix: --greedy_clustering
- id: in_g_ani
  doc: "ANI threshold for greedy clustering- put the fraction\nnot the percentage\
    \ (e.g. 0.99, not 99) (default: 0.99)"
  type: double?
  inputBinding:
    prefix: --g_ani
- id: in_g_cov
  doc: "Alignment coverage for greedy clustering- put the\nfraction not the percentage\
    \ (e.g. 0.5, not 10)\n(default: 0.99)"
  type: double?
  inputBinding:
    prefix: --g_cov
- id: in_g_mm
  doc: 'Maximum read mismatch level (default: 100)'
  type: long?
  inputBinding:
    prefix: --g_mm
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- inStrain
- compare
