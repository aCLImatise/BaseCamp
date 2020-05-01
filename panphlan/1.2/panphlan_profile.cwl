#!/usr/bin/env cwl-runner

baseCommand:
- panphlan_profile.py
class: CommandLineTool
cwlVersion: v1.0
id: panphlan_profile.py
inputs:
- doc: Input directory of panphlan_map.py results, containing SAMPLE.csv.bz2 files
  id: i_dna
  inputBinding:
    prefix: --i_dna
  type: string
- doc: Input directory of bowtie2 indexes
  id: i_bowtie2_indexes
  inputBinding:
    prefix: --i_bowtie2_indexes
  type: string
- doc: 'Panphlan species/clade database (e.g.: ecoli16)'
  id: clade
  inputBinding:
    prefix: --clade
  type: string
- doc: 'Write gene family presence/absence matrix: gene_presence_absence.csv'
  id: o_dna
  inputBinding:
    prefix: --o_dna
  type: string
- doc: 'RNA-seq: input directory of RNA mapping results SAMPLE_RNA.csv.bz2'
  id: i_rna
  inputBinding:
    prefix: --i_rna
  type: string
- doc: 'RNA-seq: list of DNA-RNA sequencing pairs from the same biological sample.'
  id: sample_pairs
  inputBinding:
    prefix: --sample_pairs
  type: string
- doc: 'Gene family presence/absence threshold: lower are non- present gene families.'
  id: th_zero
  inputBinding:
    prefix: --th_zero
  type: long
- doc: 'Gene family presence/absence threshold: higher are present gene families.'
  id: th_present
  inputBinding:
    prefix: --th_present
  type: string
- doc: 'Gene family presence/absence threshold: higher are multicopy gene families.'
  id: th_multicopy
  inputBinding:
    prefix: --th_multicopy
  type: long
- doc: 'Minimum coverage threshold, default: 2X'
  id: min_coverage
  inputBinding:
    prefix: --min_coverage
  type: long
- doc: 'Strain presence/absence plateau curve threshold: left max [1.25]'
  id: left_max
  inputBinding:
    prefix: --left_max
  type: string
- doc: 'Strain presence/absence plateau curve threshold: right min [0.75]'
  id: right_min
  inputBinding:
    prefix: --right_min
  type: string
- doc: 'Max accepted percent of zero coveraged gene-families (default: <10 %).'
  id: rna_max_zeros
  inputBinding:
    prefix: --rna_max_zeros
  type: string
- doc: Percentile for normalizing RNA/DNA ratios
  id: rna_norm_percentile
  inputBinding:
    prefix: --rna_norm_percentile
  type: string
- doc: 'Minimum threshold (percentage) for genome length to add a reference genome
    to presence/absence matrix (default: 50).'
  id: strain_similarity_perc
  inputBinding:
    prefix: --strain_similarity_perc
  type: string
- doc: User-defined string to mark non-present genes. [NP]
  id: np
  inputBinding:
    prefix: --np
  type: string
- doc: User-defined string to mark multicopy and undefined genes. [NaN]
  id: nan
  inputBinding:
    prefix: --nan
  type: string
- doc: Filename for gene-family coverage plot.
  id: o_cov_plot
  inputBinding:
    prefix: --o_covplot
  type: string
- doc: Filename for normalized gene-family coverage plot.
  id: o_cov_plot_normed
  inputBinding:
    prefix: --o_covplot_normed
  type: string
- doc: Write raw gene-family coverage matrix.
  id: o_cov
  inputBinding:
    prefix: --o_cov
  type: string
- doc: Write gene-family plateau definitions (1, -1, -2, -3)
  id: o_idx
  inputBinding:
    prefix: --o_idx
  type: string
- doc: Write normalized gene-family transcription values (RNA-seq).
  id: o_rna
  inputBinding:
    prefix: --o_rna
  type: string
- doc: Write overlap of gene-families between samples-strains and reference genomes.
  id: strain_hit_genes_perc
  inputBinding:
    prefix: --strain_hit_genes_perc
  type: string
- doc: Read coverage matrix (option --o_cov) for re-analysis using other thresholds
  id: i_cov
  inputBinding:
    prefix: --i_cov
  type: string
- doc: 'In addition to option --i_cov: number of reference genomes'
  id: num_genomes
  inputBinding:
    prefix: --num_genomes
  type: string
- doc: 'In addition to option --i_cov: average number of gene- families'
  id: genome_avg_length
  inputBinding:
    prefix: --genome_avg_length
  type: string
- doc: Add reference genomes to gene-family presence/absence matrix.
  id: add_strains
  inputBinding:
    prefix: --add_strains
  type: boolean
- doc: Plot coverage curves to screen, and not to a file.
  id: interactive
  inputBinding:
    prefix: --interactive
  type: boolean
- doc: Display progress information.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
