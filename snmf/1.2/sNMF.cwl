class: CommandLineTool
id: sNMF.cwl
inputs:
- id: x
  doc: -- genotype file (in .geno format)
  type: string
  inputBinding:
    prefix: -x
- id: k
  doc: -- number K of ancestral populations
  type: string
  inputBinding:
    prefix: -K
- id: a
  doc: '-- regularization parameter       (default: 0)'
  type: string
  inputBinding:
    prefix: -a
- id: q
  doc: '-- individual admixture file      (default: genotype_file.K.Q)'
  type: string
  inputBinding:
    prefix: -q
- id: g
  doc: '-- ancestral frequencies file     (default: genotype_file.K.G)'
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: "-- cross-entropy with 'perc'                          of masked genotypes\
    \               (default: 0.05)"
  type: string
  inputBinding:
    prefix: -c
- id: e
  doc: '-- tolerance error                (default: 0.0001)'
  type: string
  inputBinding:
    prefix: -e
- id: i
  doc: '-- number max of iterations       (default: 200)'
  type: string
  inputBinding:
    prefix: -i
- id: i
  doc: '-- number of SNPs used to init Q  (default: min(10000,L/10)'
  type: string
  inputBinding:
    prefix: -I
- id: q
  doc: -- individual admixture initialisation file
  type: string
  inputBinding:
    prefix: -Q
- id: s
  doc: '-- seed random init               (default: random)'
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: '-- 1 if haploid, 2 if diploid     (default: 2)'
  type: string
  inputBinding:
    prefix: -m
- id: p
  doc: '-- number of processes (CPU)      (default: 1)'
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- sNMF
