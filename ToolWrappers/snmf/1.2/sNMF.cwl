class: CommandLineTool
id: sNMF.cwl
inputs:
- id: in_genotype_file_format
  doc: -- genotype file (in .geno format)
  type: File?
  inputBinding:
    prefix: -x
- id: in_number_k_ancestral
  doc: -- number K of ancestral populations
  type: long?
  inputBinding:
    prefix: -K
- id: in_regularization_parameter_default
  doc: '-- regularization parameter       (default: 0)'
  type: long?
  inputBinding:
    prefix: -a
- id: in_individual_admixture_file
  doc: '-- individual admixture file      (default: genotype_file.K.Q)'
  type: File?
  inputBinding:
    prefix: -q
- id: in_ancestral_frequencies_file
  doc: '-- ancestral frequencies file     (default: genotype_file.K.G)'
  type: File?
  inputBinding:
    prefix: -g
- id: in__crossentropy_masked
  doc: "-- cross-entropy with 'perc'\nof masked genotypes               (default:\
    \ 0.05)"
  type: double?
  inputBinding:
    prefix: -c
- id: in__tolerance_error
  doc: '-- tolerance error                (default: 0.0001)'
  type: double?
  inputBinding:
    prefix: -e
- id: in__number_max
  doc: '-- number max of iterations       (default: 200)'
  type: long?
  inputBinding:
    prefix: -i
- id: in_number_snps_used
  doc: '-- number of SNPs used to init Q  (default: min(10000,L/10)'
  type: long?
  inputBinding:
    prefix: -I
- id: in_individual_admixture_initialisation
  doc: -- individual admixture initialisation file
  type: File?
  inputBinding:
    prefix: -Q
- id: in__seed_random
  doc: '-- seed random init               (default: random)'
  type: string?
  inputBinding:
    prefix: -s
- id: in__diploid_default
  doc: '-- 1 if haploid, 2 if diploid     (default: 2)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_number_processes_cpu
  doc: '-- number of processes (CPU)      (default: 1)'
  type: long?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sNMF
