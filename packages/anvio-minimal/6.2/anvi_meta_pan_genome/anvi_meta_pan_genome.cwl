class: CommandLineTool
id: anvi_meta_pan_genome.cwl
inputs:
- id: in_pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: in_genomes_storage
  doc: Anvi'o genomes storage file
  type: File
  inputBinding:
    prefix: --genomes-storage
- id: in_internal_genomes
  doc: "A four-column TAB-delimited flat text file. This file\nshould be identical\
    \ to the internal genomes file you\nused for your pangenomics analysis. Anvi'o\
    \ will use\nthis file to find all profile and contigs databases\nthat contain\
    \ the information for each gene and genome\nacross metagenomes."
  type: File
  inputBinding:
    prefix: --internal-genomes
- id: in_fraction_of_median_coverage
  doc: "The value set here will be used to remove a gene if\nits total coverage across\
    \ environments is less than\nthe median coverage of all genes multiplied by this\n\
    value. The default is 0.25, which means, if the median\ntotal coverage of all\
    \ genes across all samples is\n100X, then, a gene with a total coverage of less\
    \ than\n25X across all samples will be assumed not a part of\nthe 'environmental\
    \ core'."
  type: double
  inputBinding:
    prefix: --fraction-of-median-coverage
- id: in_min_detection
  doc: "For this entire thing to work, the genome you are\nfocusing on should be detected\
    \ in at least one\nmetagenome. If that is not the case, it would mean\nthat you\
    \ do not have any sample that represents the\nniche for this organism (or you\
    \ do not have enough\ndepth of coverage) to investigate the detection of\ngenes\
    \ in the environment. By default, this script\nrequires at least '0.5' of the\
    \ genome to be detected\nin at least one metagenome. This parameter allows you\n\
    to change that. 0 would mean no detection test\nrequired, 1 would mean the entire\
    \ genome must be\ndetected.\n"
  type: double
  inputBinding:
    prefix: --min-detection
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-meta-pan-genome
