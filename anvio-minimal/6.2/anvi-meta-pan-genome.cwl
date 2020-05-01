#!/usr/bin/env cwl-runner

baseCommand:
- anvi-meta-pan-genome
class: CommandLineTool
cwlVersion: v1.0
id: anvi-meta-pan-genome
inputs:
- doc: Anvi'o pan database
  id: pan_db
  inputBinding:
    prefix: --pan-db
  type: string
- doc: Anvi'o genomes storage file
  id: genomes_storage
  inputBinding:
    prefix: --genomes-storage
  type: string
- doc: A four-column TAB-delimited flat text file. This file should be identical to
    the internal genomes file you used for your pangenomics analysis. Anvi'o will
    use this file to find all profile and contigs databases that contain the information
    for each gene and genome across metagenomes.
  id: internal_genomes
  inputBinding:
    prefix: --internal-genomes
  type: File
- doc: The value set here will be used to remove a gene if its total coverage across
    environments is less than the median coverage of all genes multiplied by this
    value. The default is 0.25, which means, if the median total coverage of all genes
    across all samples is 100X, then, a gene with a total coverage of less than 25X
    across all samples will be assumed not a part of the 'environmental core'.
  id: fraction_of_median_coverage
  inputBinding:
    prefix: --fraction-of-median-coverage
  type: double
- doc: For this entire thing to work, the genome you are focusing on should be detected
    in at least one metagenome. If that is not the case, it would mean that you do
    not have any sample that represents the niche for this organism (or you do not
    have enough depth of coverage) to investigate the detection of genes in the environment.
    By default, this script requires at least '0.5' of the genome to be detected in
    at least one metagenome. This parameter allows you to change that. 0 would mean
    no detection test required, 1 would mean the entire genome must be detected.
  id: min_detection
  inputBinding:
    prefix: --min-detection
  type: double
