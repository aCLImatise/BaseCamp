class: CommandLineTool
id: hisat2_extract_snps_haplotypes_UCSC.py.cwl
inputs:
- id: genome_file
  doc: input genome file (e.g. genome.fa)
  type: string
  inputBinding:
    position: 0
- id: snp_fname
  doc: 'input snp file downloaded from UCSC (plain text or gzipped file is accepted:
    snp144Common.txt or snp144Common.txt.gz)'
  type: string
  inputBinding:
    position: 1
- id: base_fname
  doc: base filename for SNPs and haplotypes
  type: string
  inputBinding:
    position: 2
- id: inter_gap
  doc: Maximum distance for variants to be in the same haplotype
  type: long
  inputBinding:
    prefix: --inter-gap
- id: intra_gap
  doc: Break a haplotype into several haplotypes
  type: long
  inputBinding:
    prefix: --intra-gap
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: test_set
  doc: print test reads
  type: boolean
  inputBinding:
    prefix: --testset
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2_extract_snps_haplotypes_UCSC.py
