class: CommandLineTool
id: inStrain_compare.cwl
inputs:
- id: i
  doc: '[INPUT [INPUT ...]], --input [INPUT [INPUT ...]] A list of inStrain objects,
    all mapped to the same .fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -i
- id: output
  doc: 'Output prefix (default: instrainComparer)'
  type: string
  inputBinding:
    prefix: --output
- id: processes
  doc: 'Number of processes to use (default: 6)'
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: min_cov
  doc: 'Minimum coverage to call an variant (default: 5)'
  type: long
  inputBinding:
    prefix: --min_cov
- id: min_freq
  doc: 'Minimum SNP frequency to confirm a SNV (both this AND the FDR snp count cutoff
    must be true to call a SNP). (default: 0.05)'
  type: long
  inputBinding:
    prefix: --min_freq
- id: fdr
  doc: 'SNP false discovery rate- based on simulation data with a 0.1 percent error
    rate (Q30) (default: 1e-06)'
  type: string
  inputBinding:
    prefix: --fdr
- id: scaffolds
  doc: 'Location to a list of scaffolds to compare. You can also make this a .fasta
    file and it will load the scaffold names (default: None)'
  type: string
  inputBinding:
    prefix: --scaffolds
- id: store_coverage_overlap
  doc: 'Also store coverage overlap on an mm level (default: False)'
  type: boolean
  inputBinding:
    prefix: --store_coverage_overlap
- id: store_mismatch_locations
  doc: 'Store the locations of SNPs (default: False)'
  type: boolean
  inputBinding:
    prefix: --store_mismatch_locations
- id: include_self_comparisons
  doc: 'Also compare IS profiles against themself (default: False)'
  type: boolean
  inputBinding:
    prefix: --include_self_comparisons
- id: greedy_clustering
  doc: 'Dont do pair-wise comparisons, do greedy clustering to only find the number
    of clsuters. If this is set, use the parameters below as well (default: False)'
  type: boolean
  inputBinding:
    prefix: --greedy_clustering
- id: g_ani
  doc: 'ANI threshold for greedy clustering- put the fraction not the percentage (e.g.
    0.99, not 99) (default: 0.99)'
  type: string
  inputBinding:
    prefix: --g_ani
- id: g_cov
  doc: 'Alignment coverage for greedy clustering- put the fraction not the percentage
    (e.g. 0.5, not 10) (default: 0.99)'
  type: string
  inputBinding:
    prefix: --g_cov
- id: g_mm
  doc: 'Maximum read mismatch level (default: 100)'
  type: string
  inputBinding:
    prefix: --g_mm
outputs: []
cwlVersion: v1.1
baseCommand:
- inStrain
- compare
