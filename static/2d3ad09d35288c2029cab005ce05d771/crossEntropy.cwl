class: CommandLineTool
id: crossEntropy.cwl
inputs:
- id: x
  doc: -- genotype file (in .geno format)
  type: string
  inputBinding:
    prefix: -x
- id: k
  doc: -- the number of ancestral populations
  type: string
  inputBinding:
    prefix: -K
- id: m
  doc: '-- 1 if haploid, 2 if diploid              (default: 2)'
  type: string
  inputBinding:
    prefix: -m
- id: q
  doc: '-- individual admixture coefficient file (default: genotype_file_I.K.Q)'
  type: string
  inputBinding:
    prefix: -q
- id: g
  doc: '-- ancestral genotype frequency file       (default: genotype_file_I.K.G)'
  type: string
  inputBinding:
    prefix: -g
- id: genotype
  doc: 'with masked genotypes     (default: genotype_file_I.geno)'
  type: string
  inputBinding:
    prefix: -- genotype
outputs: []
cwlVersion: v1.1
baseCommand:
- crossEntropy
