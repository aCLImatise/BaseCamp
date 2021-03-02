class: CommandLineTool
id: panphlan_profiling.py.cwl
inputs:
- id: in_i_dna
  doc: "Input directory of panphlan_map.py results or text\nfile with"
  type: File?
  inputBinding:
    prefix: --i_dna
- id: in_i_cov_mat
  doc: Path to precomputed coverage matrix
  type: File?
  inputBinding:
    prefix: --i_covmat
- id: in_o_matrix
  doc: Path for presence/absence matrix output
  type: File?
  inputBinding:
    prefix: --o_matrix
- id: in_o_cov_mat
  doc: Write raw gene-family coverage matrix in provided file
  type: File?
  inputBinding:
    prefix: --o_covmat
- id: in_o_cov_plot_normed
  doc: Filename for normalized gene-family coverage plot.
  type: File?
  inputBinding:
    prefix: --o_covplot_normed
- id: in_o_idx
  doc: Write gene-family plateau definitions (1, -1, -2, -3)
  type: File?
  inputBinding:
    prefix: --o_idx
- id: in_min_coverage
  doc: 'Minimum coverage threshold, default: 2X'
  type: long?
  inputBinding:
    prefix: --min_coverage
- id: in_left_max
  doc: "Strain presence/absence plateau curve threshold: left\nmax [1.25]"
  type: long?
  inputBinding:
    prefix: --left_max
- id: in_right_min
  doc: "Strain presence/absence plateau curve threshold: right\nmin [0.75]"
  type: long?
  inputBinding:
    prefix: --right_min
- id: in_th_non_present
  doc: 'Gene families threshold: not present if lower'
  type: string?
  inputBinding:
    prefix: --th_non_present
- id: in_th_present
  doc: 'Gene families threshold: present if higher'
  type: string?
  inputBinding:
    prefix: --th_present
- id: in_th_multicopy
  doc: 'Gene families threshold: multicopy if higher'
  type: string?
  inputBinding:
    prefix: --th_multicopy
- id: in_strain_similarity_perc
  doc: "Minimum threshold (percentage) for genome length to\nadd a reference genome\
    \ to presence/absence matrix\n(default: 50)."
  type: long?
  inputBinding:
    prefix: --strain_similarity_perc
- id: in_i_rna
  doc: "RNA-seq: input directory of RNA mapping results\nSAMPLE_RNA.csv.bz2"
  type: Directory?
  inputBinding:
    prefix: --i_rna
- id: in_sample_pairs
  doc: "RNA-seq: list of DNA-RNA sequencing pairs from the\nsame biological sample."
  type: string?
  inputBinding:
    prefix: --sample_pairs
- id: in_rna_max_zeros
  doc: "Max accepted percent of zero coveraged gene-families\n(default: <10 %)."
  type: long?
  inputBinding:
    prefix: --rna_max_zeros
- id: in_rna_norm_percentile
  doc: Percentile for normalizing RNA/DNA ratios
  type: string?
  inputBinding:
    prefix: --rna_norm_percentile
- id: in_o_rna
  doc: "Write normalized gene-family transcription values\n(RNA-seq)."
  type: File?
  inputBinding:
    prefix: --o_rna
- id: in_add_ref
  doc: Add reference genomes to gene-family presence/absence
  type: boolean?
  inputBinding:
    prefix: --add_ref
- id: in_func_an_not
  doc: "Path to file mapping UniRef IDs to GO/KEGG/...\nannotation for functional\
    \ characterization"
  type: File?
  inputBinding:
    prefix: --func_annot
- id: in_field
  doc: "Field in the annotation file that must be added to the\npresence/absence matrix"
  type: File?
  inputBinding:
    prefix: --field
- id: in_pan_genome
  doc: "Path to pangenome tsv file\n"
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_matrix_dot
  doc: -v, --verbose         Show progress information
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o_matrix
  doc: Path for presence/absence matrix output
  type: File?
  outputBinding:
    glob: $(inputs.in_o_matrix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panphlan:3.1--py_0
cwlVersion: v1.1
baseCommand:
- panphlan_profiling.py
