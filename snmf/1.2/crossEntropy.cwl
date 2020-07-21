class: CommandLineTool
id: ../../../crossEntropy.cwl
inputs:
- id: _genotype_file_geno
  doc: -- genotype file (in .geno format)
  type: string
  inputBinding:
    prefix: -x
- id: _number_ancestral
  doc: -- the number of ancestral populations
  type: string
  inputBinding:
    prefix: -K
- id: _haploid_diploid
  doc: '-- 1 if haploid, 2 if diploid              (default: 2)'
  type: string
  inputBinding:
    prefix: -m
- id: _individual_admixture
  doc: '-- individual admixture coefficient file (default: genotype_file_I.K.Q)'
  type: string
  inputBinding:
    prefix: -q
- id: _ancestral_genotype
  doc: '-- ancestral genotype frequency file       (default: genotype_file_I.K.G)'
  type: string
  inputBinding:
    prefix: -g
- id: _genotype_file_masked
  doc: '-- genotype file with masked genotypes     (default: genotype_file_I.geno)'
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- crossEntropy
