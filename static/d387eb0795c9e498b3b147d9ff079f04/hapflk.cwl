class: CommandLineTool
id: hapflk.cwl
inputs:
- id: prefix
  doc: 'prefix for output files (default: hapflk)'
  type: string
  inputBinding:
    prefix: --prefix
- id: n_cpu
  doc: 'Use N processors when possible (default: 1)'
  type: string
  inputBinding:
    prefix: --ncpu
- id: eigen
  doc: 'Perform eigen decomposition of tests (default: False)'
  type: boolean
  inputBinding:
    prefix: --eigen
- id: ped
  doc: 'PED file (default: None)'
  type: File
  inputBinding:
    prefix: --ped
- id: map
  doc: 'MAP file (default: None)'
  type: File
  inputBinding:
    prefix: --map
- id: file
  doc: 'PLINK file prefix (ped,map) (default: None)'
  type: string
  inputBinding:
    prefix: --file
- id: b_file
  doc: 'PLINK bfile prefix (bim,fam,bed) (default: None)'
  type: string
  inputBinding:
    prefix: --bfile
- id: miss_geno
  doc: 'Missing Genotype Code (default: 0)'
  type: string
  inputBinding:
    prefix: --miss_geno
- id: miss_pheno
  doc: 'Missing Phenotype Code (default: -9)'
  type: string
  inputBinding:
    prefix: --miss_pheno
- id: miss_parent
  doc: 'Missing Parent Code (default: 0)'
  type: string
  inputBinding:
    prefix: --miss_parent
- id: miss_sex
  doc: 'Missing Sex Code (default: 0)'
  type: string
  inputBinding:
    prefix: --miss_sex
- id: chr
  doc: 'Select chromosome C (default: None)'
  type: string
  inputBinding:
    prefix: --chr
- id: from
  doc: 'Select SNPs with position > x (in bp/cM) Warning : does not work with BED
    files (default: 0)'
  type: string
  inputBinding:
    prefix: --from
- id: to
  doc: 'Select SNPs with position < x (in bp/cM) Warning : does not work with BED
    files (default: inf)'
  type: string
  inputBinding:
    prefix: --to
- id: other_map
  doc: 'Use alternative map (genetic/RH) (default: False)'
  type: boolean
  inputBinding:
    prefix: --other_map
- id: kinship
  doc: 'Read population kinship from file (if None, kinship is estimated) (default:
    None)'
  type: File
  inputBinding:
    prefix: --kinship
- id: reynolds_snps
  doc: 'Number of SNPs to use to estimate Reynolds distances (default: 10000)'
  type: string
  inputBinding:
    prefix: --reynolds-snps
- id: out_group
  doc: 'Use population POP as outgroup for tree rooting (if None, use midpoint rooting)
    (default: None)'
  type: string
  inputBinding:
    prefix: --outgroup
- id: keep_out_group
  doc: 'Keep outgroup in population set (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-outgroup
- id: k
  doc: 'Set the number of clusters to K. hapFLK calculations switched off if K<0 (default:
    -1)'
  type: string
  inputBinding:
    prefix: -K
- id: n_fit
  doc: 'Set the number of model fit to use (default: 20)'
  type: string
  inputBinding:
    prefix: --nfit
- id: phased
  doc: 'Haplotype data provided (default: False)'
  type: boolean
  inputBinding:
    prefix: --phased
- id: no_k_frq
  doc: 'Do not write Cluster frequencies (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-kfrq
outputs: []
cwlVersion: v1.1
baseCommand:
- hapflk
