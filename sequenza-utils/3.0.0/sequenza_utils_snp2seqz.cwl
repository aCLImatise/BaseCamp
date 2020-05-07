class: CommandLineTool
id: sequenza_utils_snp2seqz.cwl
inputs:
- id: output
  doc: Output file. For gzip compressed output name the file ending in .gz. Default
    STDOUT
  type: string
  inputBinding:
    prefix: --output
- id: vcf
  doc: VCF input file
  type: string
  inputBinding:
    prefix: --vcf
- id: gc
  doc: The GC-content wiggle file
  type: string
  inputBinding:
    prefix: -gc
- id: vcf_depth
  doc: Column separated VCF tags in the format column for the read depth for the normal
    and for the tumor. Default "DP:DP"
  type: string
  inputBinding:
    prefix: --vcf-depth
- id: vcf_samples
  doc: '{n/t,t/n} Order of the normal and tumor sample in the VCF column, choices
    are "n/t" or "t/n". Default "n/t"'
  type: boolean
  inputBinding:
    prefix: --vcf-samples
- id: vcf_alleles
  doc: Column separated VCF tags in the format column for the alleles depth for the
    normal and for the tumor. Default "AD:AD"
  type: string
  inputBinding:
    prefix: --vcf-alleles
- id: preset
  doc: Preset set of options to parse VCF from popular variant callers
  type: string
  inputBinding:
    prefix: --preset
- id: hom
  doc: Threshold to select homozygous positions. Default 0.9
  type: string
  inputBinding:
    prefix: --hom
- id: het
  doc: Threshold to select heterozygous positions. Default 0.25.
  type: string
  inputBinding:
    prefix: --het
- id: het_f
  doc: Threshold of frequency in the forward strand to trust heterozygous calls. Default
    -0.2 (Disabled, effective with values >= 0).
  type: string
  inputBinding:
    prefix: --het_f
- id: tab_ix
  doc: Path of the tabix binary. Default "tabix"
  type: string
  inputBinding:
    prefix: --tabix
- id: n
  doc: Threshold to filter positions by the sum of read depth of the two samples.
    Default 20.
  type: string
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- snp2seqz
