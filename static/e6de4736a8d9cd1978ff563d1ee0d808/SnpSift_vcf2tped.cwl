class: CommandLineTool
id: SnpSift_vcf2tped.cwl
inputs:
- id: output_name
  doc: ': Base name for the new TPED and TFAM files.'
  type: string
  inputBinding:
    position: 0
- id: f
  doc: ': Force. Overwrite new files if they exist. Default: false'
  type: boolean
  inputBinding:
    prefix: -f
- id: num
  doc: ': Use only numbers {1, 2, 3, 4} instead of bases {A, C, G, T}. Default: false'
  type: boolean
  inputBinding:
    prefix: -num
- id: only_snp
  doc: ': Use only SNPs when converting VCF to TPED. Default: false'
  type: boolean
  inputBinding:
    prefix: -onlySnp
- id: only_bi_allelic
  doc: ': Use only bi-allelic variants. Default: false'
  type: boolean
  inputBinding:
    prefix: -onlyBiAllelic
- id: use_missing
  doc: ': Use entries with missing genotypes (otherwise they are filtered out). Default:
    true'
  type: boolean
  inputBinding:
    prefix: -useMissing
- id: use_missing_ref
  doc: ": Use entries with missing genotypes marking them as 'reference' instead of\
    \ 'missing'. Default: false"
  type: boolean
  inputBinding:
    prefix: -useMissingRef
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- vcf2tped
