class: CommandLineTool
id: crossEntropy.cwl
inputs:
- id: in_genotype_file_format
  doc: -- genotype file (in .geno format)
  type: File?
  inputBinding:
    prefix: -x
- id: in__number_ancestral
  doc: -- the number of ancestral populations
  type: long?
  inputBinding:
    prefix: -K
- id: in__diploid_default
  doc: '-- 1 if haploid, 2 if diploid              (default: 2)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_individual_admixture_coefficient
  doc: '-- individual admixture coefficient file (default: genotype_file_I.K.Q)'
  type: File?
  inputBinding:
    prefix: -q
- id: in_ancestral_genotype_frequency
  doc: '-- ancestral genotype frequency file       (default: genotype_file_I.K.G)'
  type: File?
  inputBinding:
    prefix: -g
- id: in_genotype_file_genotypefileigeno
  doc: '-- genotype file with masked genotypes     (default: genotype_file_I.geno)'
  type: File?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crossEntropy
