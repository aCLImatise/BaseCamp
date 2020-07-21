class: CommandLineTool
id: ../../../sNMF.cwl
inputs:
- id: _genotype_file
  doc: -- genotype file (in .geno format)
  type: string
  inputBinding:
    prefix: -x
- id: _number_k
  doc: -- number K of ancestral populations
  type: string
  inputBinding:
    prefix: -K
- id: _regularization_parameter
  doc: '-- regularization parameter       (default: 0)'
  type: string
  inputBinding:
    prefix: -a
- id: _individual_admixture_file
  doc: '-- individual admixture file      (default: genotype_file.K.Q)'
  type: string
  inputBinding:
    prefix: -q
- id: _ancestral_frequencies
  doc: '-- ancestral frequencies file     (default: genotype_file.K.G)'
  type: string
  inputBinding:
    prefix: -g
- id: _crossentropy_masked
  doc: "-- cross-entropy with 'perc'                          of masked genotypes\
    \               (default: 0.05)"
  type: string
  inputBinding:
    prefix: -c
- id: _tolerance_error
  doc: '-- tolerance error                (default: 0.0001)'
  type: string
  inputBinding:
    prefix: -e
- id: _number_max
  doc: '-- number max of iterations       (default: 200)'
  type: string
  inputBinding:
    prefix: -i
- id: _number_snps
  doc: '-- number of SNPs used to init Q  (default: min(10000,L/10)'
  type: string
  inputBinding:
    prefix: -I
- id: _individual_admixture_initialisation
  doc: -- individual admixture initialisation file
  type: string
  inputBinding:
    prefix: -Q
- id: _seed_random
  doc: '-- seed random init               (default: random)'
  type: string
  inputBinding:
    prefix: -s
- id: _haploid_default
  doc: '-- 1 if haploid, 2 if diploid     (default: 2)'
  type: string
  inputBinding:
    prefix: -m
- id: _number_processes
  doc: '-- number of processes (CPU)      (default: 1)'
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- sNMF
