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
- id: in_scaffold_bin_be
  doc: "[STB [STB ...]], --stb [STB [STB ...]]\nScaffold to bin. This can be a file\
    \ with each line\nlisting a scaffold and a bin name, tab-seperated. This\ncan\
    \ also be a space-seperated list of .fasta files,\nwith one genome per .fasta\
    \ file. If nothing is\nprovided, all scaffolds will be treated as belonging\n\
    to the same genome (default: [])"
  type: boolean?
  inputBinding:
    prefix: -s
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
- id: in_database_mode
  doc: "Using the parameters below, automatically determine\nwhich genomes are present\
    \ in each Profile and only\ncompare scaffolds from those genomes. All profiles\n\
    must have run Profile with the same .stb (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --database_mode
- id: in_breadth
  doc: "Minimum breadth_minCov required to count a genome\npresent (default: 0.5)"
  type: double?
  inputBinding:
    prefix: --breadth
- id: in_scaffolds
  doc: "Location to a list of scaffolds to compare. You can\nalso make this a .fasta\
    \ file and it will load the\nscaffold names (default: None)"
  type: File?
  inputBinding:
    prefix: --scaffolds
- id: in_genome
  doc: "Run scaffolds belonging to this single genome only.\nMust provide an .stb\
    \ file (default: None)"
  type: File?
  inputBinding:
    prefix: --genome
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
- id: in_skip_plot_generation
  doc: "Dont create plots at the end of the run. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --skip_plot_generation
- id: in_group_length
  doc: "How many bp to compare simultaneously (higher will use\nmore RAM and run more\
    \ quickly) (default: 10000000)"
  type: long?
  inputBinding:
    prefix: --group_length
- id: in_ani_threshold
  doc: "popANI threshold to cluster genomes at. Must provide\n.stb file to do so (default:\
    \ 0.99999)"
  type: File?
  inputBinding:
    prefix: --ani_threshold
- id: in_coverage_treshold
  doc: "Minimum percent_genome_compared for a genome\ncomparison to count; if below\
    \ the popANI will be set\nto 0. (default: 0.1)"
  type: double?
  inputBinding:
    prefix: --coverage_treshold
- id: in_cluster_alg
  doc: "Algorithm used to cluster genomes (passed to\nscipy.cluster.hierarchy.linkage)\
    \ (default: average)\n"
  type: string?
  inputBinding:
    prefix: --clusterAlg
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/instrain:1.5.1--py_0
cwlVersion: v1.1
baseCommand:
- inStrain
- compare
