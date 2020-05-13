class: CommandLineTool
id: anvi_meta_pan_genome.cwl
inputs:
- id: pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: genomes_storage
  doc: Anvi'o genomes storage file
  type: string
  inputBinding:
    prefix: --genomes-storage
- id: internal_genomes
  doc: A four-column TAB-delimited flat text file. This file should be identical to
    the internal genomes file you used for your pangenomics analysis. Anvi'o will
    use this file to find all profile and contigs databases that contain the information
    for each gene and genome across metagenomes.
  type: File
  inputBinding:
    prefix: --internal-genomes
- id: fraction_of_median_coverage
  doc: The value set here will be used to remove a gene if its total coverage across
    environments is less than the median coverage of all genes multiplied by this
    value. The default is 0.25, which means, if the median total coverage of all genes
    across all samples is 100X, then, a gene with a total coverage of less than 25X
    across all samples will be assumed not a part of the 'environmental core'.
  type: double
  inputBinding:
    prefix: --fraction-of-median-coverage
- id: min_detection
  doc: For this entire thing to work, the genome you are focusing on should be detected
    in at least one metagenome. If that is not the case, it would mean that you do
    not have any sample that represents the niche for this organism (or you do not
    have enough depth of coverage) to investigate the detection of genes in the environment.
    By default, this script requires at least '0.5' of the genome to be detected in
    at least one metagenome. This parameter allows you to change that. 0 would mean
    no detection test required, 1 would mean the entire genome must be detected.
  type: double
  inputBinding:
    prefix: --min-detection
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-meta-pan-genome
