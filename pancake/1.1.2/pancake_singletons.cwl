class: CommandLineTool
id: ../../../pancake_singletons.cwl
inputs:
- id: pan_file
  doc: Name of PanCake Data Object File (required)
  type: string
  inputBinding:
    prefix: --panfile
- id: ref_chrom
  doc: Reference CHROMOSOME (define either ONE reference chromosome or ONE reference
    genome)
  type: string
  inputBinding:
    prefix: --ref_chrom
- id: ref_genome
  doc: Reference GENOME (define either ONE reference chromosome or ONE reference genome)
  type: string
  inputBinding:
    prefix: --ref_genome
- id: non_ref_chrom_s
  doc: 'Names of non-reference CHROMOSOMES (DEFAULT: ALL non- reference chromosomes)'
  type: string[]
  inputBinding:
    prefix: --non_ref_chroms
- id: non_ref_genomes
  doc: 'Names of non-reference GENOMES (DEFAULT: ALL non- reference genomes)'
  type: string[]
  inputBinding:
    prefix: --non_ref_genomes
- id: exclude_genomes
  doc: 'Names of GENOMES to exclude from singleton analysis (DEFAULT: No genomes excluded)'
  type: string[]
  inputBinding:
    prefix: --exclude_genomes
- id: exclude_chromosomes
  doc: 'Names of CHROMOSOMES to exclude from singleton analysis (DEFAULT: No chromosomes
    excluded)'
  type: string[]
  inputBinding:
    prefix: --exclude_chromosomes
- id: min_len
  doc: minimum length of regions to identify as a singleton region (INTEGER, DEFAULT=25)
  type: long
  inputBinding:
    prefix: --min_len
- id: output
  doc: 'directory to which .fasta files of singleton regions are written (DEFAULT:
    singletons_{REF_CHROM|REF_GENOME})'
  type: string
  inputBinding:
    prefix: --output
- id: no_output
  doc: if set, supress .fasta output of singleton regions
  type: boolean
  inputBinding:
    prefix: --no_output
- id: bed_file
  doc: .bed file to which singleton regions are written (DEFAULT= singletons_{REF_CHROM|REF_GENOME}.bed)
  type: string
  inputBinding:
    prefix: --bed_file
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- singletons
