class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pancake_core.cwl
inputs:
- id: pan_file
  doc: Name of PanCake Data Object File (required)
  type: string
  inputBinding:
    prefix: --panfile
- id: ref_chrom
  doc: Reference CHROMOSOME (define either ONE reference chromosome OR ONE reference
    genome)
  type: string
  inputBinding:
    prefix: --ref_chrom
- id: ref_genome
  doc: Reference GENOME (define either ONE reference chromosome OR ONE reference genome)
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
  doc: 'Names of GENOMES to exclude from core analysis (DEFAULT: No genomes excluded)'
  type: string[]
  inputBinding:
    prefix: --exclude_genomes
- id: exclude_chromosomes
  doc: 'Names of CHROMOSOMES to exclude from core analysis (DEFAULT: No chromosomes
    excluded)'
  type: string[]
  inputBinding:
    prefix: --exclude_chromosomes
- id: max_non_core_frac
  doc: Maximum fraction of non-core sequence regions within each included sequence
    (FLOAT, DEAFULT=0.05)
  type: long
  inputBinding:
    prefix: --max_non_core_frac
- id: min_len
  doc: minimum length of regions to identify as part of core genome (INTEGER, DEFAULT=25)
  type: long
  inputBinding:
    prefix: --min_len
- id: output
  doc: 'directory to which .fasta files of core regions are written (DEFAULT: core_{REF_CHROM|REF_GENOME})'
  type: string
  inputBinding:
    prefix: --output
- id: no_output
  doc: if set, supress .fasta output of core regions
  type: boolean
  inputBinding:
    prefix: --no_output
- id: bed_file
  doc: .bed file to which core regions are written (DEFAULT= core_{REF_CHROM|REF_GENOME}.bed)
  type: string
  inputBinding:
    prefix: --bed_file
- id: max_space
  doc: maximum non-core space allowed within a core region (DEFAULT=25)
  type: long
  inputBinding:
    prefix: --max_space
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- core
