class: CommandLineTool
id: crossEntropy.cwl
inputs:
- id: in__genotype_file_geno
  doc: -- genotype file (in .geno format)
  type: File
  inputBinding:
    prefix: -x
- id: in_number_ancestral_populations
  doc: -- the number of ancestral populations
  type: long
  inputBinding:
    prefix: -K
- id: in__haploid_diploid
  doc: '-- 1 if haploid, 2 if diploid              (default: 2)'
  type: long
  inputBinding:
    prefix: -m
- id: in__individual_admixture
  doc: '-- individual admixture coefficient file (default: genotype_file_I.K.Q)'
  type: File
  inputBinding:
    prefix: -q
- id: in__ancestral_genotype
  doc: '-- ancestral genotype frequency file       (default: genotype_file_I.K.G)'
  type: File
  inputBinding:
    prefix: -g
- id: in__genotype_file_masked
  doc: '-- genotype file with masked genotypes     (default: genotype_file_I.geno)'
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crossEntropy
