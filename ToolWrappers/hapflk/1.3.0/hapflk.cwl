class: CommandLineTool
id: hapflk.cwl
inputs:
- id: in_prefix
  doc: 'prefix for output files (default: hapflk)'
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_n_cpu
  doc: 'Use N processors when possible (default: 1)'
  type: long?
  inputBinding:
    prefix: --ncpu
- id: in_eigen
  doc: 'Perform eigen decomposition of tests (default: False)'
  type: boolean?
  inputBinding:
    prefix: --eigen
- id: in_ped
  doc: 'PED file (default: None)'
  type: File?
  inputBinding:
    prefix: --ped
- id: in_map
  doc: 'MAP file (default: None)'
  type: File?
  inputBinding:
    prefix: --map
- id: in_file
  doc: 'PLINK file prefix (ped,map) (default: None)'
  type: File?
  inputBinding:
    prefix: --file
- id: in_b_file
  doc: 'PLINK bfile prefix (bim,fam,bed) (default: None)'
  type: string?
  inputBinding:
    prefix: --bfile
- id: in_miss_geno
  doc: 'Missing Genotype Code (default: 0)'
  type: long?
  inputBinding:
    prefix: --miss_geno
- id: in_miss_pheno
  doc: 'Missing Phenotype Code (default: -9)'
  type: long?
  inputBinding:
    prefix: --miss_pheno
- id: in_miss_parent
  doc: 'Missing Parent Code (default: 0)'
  type: long?
  inputBinding:
    prefix: --miss_parent
- id: in_miss_sex
  doc: 'Missing Sex Code (default: 0)'
  type: long?
  inputBinding:
    prefix: --miss_sex
- id: in_chr
  doc: 'Select chromosome C (default: None)'
  type: string?
  inputBinding:
    prefix: --chr
- id: in_from
  doc: "Select SNPs with position > x (in bp/cM) Warning :\ndoes not work with BED\
    \ files (default: 0)"
  type: long?
  inputBinding:
    prefix: --from
- id: in_to
  doc: "Select SNPs with position < x (in bp/cM) Warning :\ndoes not work with BED\
    \ files (default: inf)"
  type: string?
  inputBinding:
    prefix: --to
- id: in_other_map
  doc: 'Use alternative map (genetic/RH) (default: False)'
  type: boolean?
  inputBinding:
    prefix: --other_map
- id: in_kinship
  doc: "Read population kinship from file (if None, kinship is\nestimated) (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --kinship
- id: in_reynolds_snps
  doc: "Number of SNPs to use to estimate Reynolds distances\n(default: 10000)"
  type: long?
  inputBinding:
    prefix: --reynolds-snps
- id: in_out_group
  doc: "Use population POP as outgroup for tree rooting (if\nNone, use midpoint rooting)\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --outgroup
- id: in_keep_out_group
  doc: 'Keep outgroup in population set (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-outgroup
- id: in_set_number_clusters
  doc: "Set the number of clusters to K. hapFLK calculations\nswitched off if K<0\
    \ (default: -1)"
  type: long?
  inputBinding:
    prefix: -K
- id: in_n_fit
  doc: 'Set the number of model fit to use (default: 20)'
  type: long?
  inputBinding:
    prefix: --nfit
- id: in_phased
  doc: 'Haplotype data provided (default: False)'
  type: boolean?
  inputBinding:
    prefix: --phased
- id: in_no_k_frq
  doc: 'Do not write Cluster frequencies (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-kfrq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hapflk
