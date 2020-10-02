class: CommandLineTool
id: LDBlockShow.cwl
inputs:
- id: in_in_vcf
  doc: <str>      Input SNP VCF Format
  type: boolean
  inputBinding:
    prefix: -InVCF
- id: in_output
  doc: <str>      OutPut File of LD Blocks
  type: File
  inputBinding:
    prefix: -OutPut
- id: in_region
  doc: <str>      In One Region to show LD info svg Figure
  type: boolean
  inputBinding:
    prefix: -Region
- id: in_sele_var
  doc: "<int>      Select statistic for deal. 1: D' 2: R^2[1]"
  type: boolean
  inputBinding:
    prefix: -SeleVar
- id: in_sub_pop
  doc: <str>      SubGroup Sample File List[ALLsample]
  type: boolean
  inputBinding:
    prefix: -SubPop
- id: in_blocktype
  doc: "<int>      method to detect Block [beta] [1]\n1. Block by PLINK (Gabriel method)\n\
    2. Solid Spine of LD RR/D' 3. Blockcut with self-defined RR or D'\n4. FixBlock\
    \ by input blocks files"
  type: boolean
  inputBinding:
    prefix: -BlockType
- id: in_ing_was
  doc: <str>      InPut GWAS Pvalue File(chr site Pvalue)
  type: boolean
  inputBinding:
    prefix: -InGWAS
- id: in_in_gff
  doc: <str>      InPut GFF3 file to show Gene CDS and name
  type: boolean
  inputBinding:
    prefix: -InGFF
- id: in_block_cut
  doc: <float>    'Strong LD' cutoff and ratio for BlockType3[0.85:0.90]
  type: boolean
  inputBinding:
    prefix: -BlockCut
- id: in_fix_block
  doc: <str>      Input fixed block region
  type: boolean
  inputBinding:
    prefix: -FixBlock
- id: in_mermin_snp_num
  doc: merger color grids when SNPnumber over N[50]
  type: long
  inputBinding:
    prefix: -MerMinSNPNum
- id: in_ld_block_show
  doc: -InVCF  <in.vcf.gz>  -OutPut <outPrefix>  -Region  chr1:10000-20000
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: <str>      OutPut File of LD Blocks
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- LDBlockShow
