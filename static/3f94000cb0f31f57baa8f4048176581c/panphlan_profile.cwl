class: CommandLineTool
id: panphlan_profile.py.cwl
inputs:
- id: i_dna
  doc: Input directory of panphlan_map.py results, containing SAMPLE.csv.bz2 files
  type: string
  inputBinding:
    prefix: --i_dna
- id: i_bowtie2_indexes
  doc: Input directory of bowtie2 indexes
  type: string
  inputBinding:
    prefix: --i_bowtie2_indexes
- id: clade
  doc: 'Panphlan species/clade database (e.g.: ecoli16)'
  type: string
  inputBinding:
    prefix: --clade
- id: o_dna
  doc: 'Write gene family presence/absence matrix: gene_presence_absence.csv'
  type: string
  inputBinding:
    prefix: --o_dna
- id: i_rna
  doc: 'RNA-seq: input directory of RNA mapping results SAMPLE_RNA.csv.bz2'
  type: string
  inputBinding:
    prefix: --i_rna
- id: sample_pairs
  doc: 'RNA-seq: list of DNA-RNA sequencing pairs from the same biological sample.'
  type: string
  inputBinding:
    prefix: --sample_pairs
- id: th_zero
  doc: 'Gene family presence/absence threshold: lower are non- present gene families.'
  type: long
  inputBinding:
    prefix: --th_zero
- id: th_present
  doc: 'Gene family presence/absence threshold: higher are present gene families.'
  type: string
  inputBinding:
    prefix: --th_present
- id: th_multicopy
  doc: 'Gene family presence/absence threshold: higher are multicopy gene families.'
  type: long
  inputBinding:
    prefix: --th_multicopy
- id: min_coverage
  doc: 'Minimum coverage threshold, default: 2X'
  type: long
  inputBinding:
    prefix: --min_coverage
- id: left_max
  doc: 'Strain presence/absence plateau curve threshold: left max [1.25]'
  type: string
  inputBinding:
    prefix: --left_max
- id: right_min
  doc: 'Strain presence/absence plateau curve threshold: right min [0.75]'
  type: string
  inputBinding:
    prefix: --right_min
- id: rna_max_zeros
  doc: 'Max accepted percent of zero coveraged gene-families (default: <10 %).'
  type: string
  inputBinding:
    prefix: --rna_max_zeros
- id: rna_norm_percentile
  doc: Percentile for normalizing RNA/DNA ratios
  type: string
  inputBinding:
    prefix: --rna_norm_percentile
- id: strain_similarity_perc
  doc: 'Minimum threshold (percentage) for genome length to add a reference genome
    to presence/absence matrix (default: 50).'
  type: string
  inputBinding:
    prefix: --strain_similarity_perc
- id: np
  doc: User-defined string to mark non-present genes. [NP]
  type: string
  inputBinding:
    prefix: --np
- id: nan
  doc: User-defined string to mark multicopy and undefined genes. [NaN]
  type: string
  inputBinding:
    prefix: --nan
- id: o_cov_plot
  doc: Filename for gene-family coverage plot.
  type: string
  inputBinding:
    prefix: --o_covplot
- id: o_cov_plot_normed
  doc: Filename for normalized gene-family coverage plot.
  type: string
  inputBinding:
    prefix: --o_covplot_normed
- id: o_cov
  doc: Write raw gene-family coverage matrix.
  type: string
  inputBinding:
    prefix: --o_cov
- id: o_idx
  doc: Write gene-family plateau definitions (1, -1, -2, -3)
  type: string
  inputBinding:
    prefix: --o_idx
- id: o_rna
  doc: Write normalized gene-family transcription values (RNA-seq).
  type: string
  inputBinding:
    prefix: --o_rna
- id: strain_hit_genes_perc
  doc: Write overlap of gene-families between samples-strains and reference genomes.
  type: string
  inputBinding:
    prefix: --strain_hit_genes_perc
- id: i_cov
  doc: Read coverage matrix (option --o_cov) for re-analysis using other thresholds
  type: string
  inputBinding:
    prefix: --i_cov
- id: num_genomes
  doc: 'In addition to option --i_cov: number of reference genomes'
  type: string
  inputBinding:
    prefix: --num_genomes
- id: genome_avg_length
  doc: 'In addition to option --i_cov: average number of gene- families'
  type: string
  inputBinding:
    prefix: --genome_avg_length
- id: add_strains
  doc: Add reference genomes to gene-family presence/absence matrix.
  type: boolean
  inputBinding:
    prefix: --add_strains
- id: interactive
  doc: Plot coverage curves to screen, and not to a file.
  type: boolean
  inputBinding:
    prefix: --interactive
- id: verbose
  doc: Display progress information.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- panphlan_profile.py
