class: CommandLineTool
id: SnpSift_vcf2tped.cwl
inputs:
- id: in_force_overwrite_files
  doc: ': Force. Overwrite new files if they exist. Default: false'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_num
  doc: ': Use only numbers {1, 2, 3, 4} instead of bases {A, C, G, T}. Default: false'
  type: boolean
  inputBinding:
    prefix: -num
- id: in_only_snp
  doc: ': Use only SNPs when converting VCF to TPED. Default: false'
  type: boolean
  inputBinding:
    prefix: -onlySnp
- id: in_only_bi_allelic
  doc: ': Use only bi-allelic variants. Default: false'
  type: boolean
  inputBinding:
    prefix: -onlyBiAllelic
- id: in_use_missing
  doc: ': Use entries with missing genotypes (otherwise they are filtered out). Default:
    true'
  type: boolean
  inputBinding:
    prefix: -useMissing
- id: in_use_missing_ref
  doc: ": Use entries with missing genotypes marking them as 'reference' instead of\
    \ 'missing'. Default: false"
  type: boolean
  inputBinding:
    prefix: -useMissingRef
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_file_do_ttf_am
  doc: ": File with genotypes and groups information (in PLINK's TFAM format)"
  type: File
  inputBinding:
    position: 0
- id: in_file_dot_vcf
  doc: ': A VCF file (variants and genotype data)'
  type: File
  inputBinding:
    position: 1
- id: in_output_name
  doc: ': Base name for the new TPED and TFAM files.'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- vcf2tped
