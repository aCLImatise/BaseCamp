class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/malva_geno.cwl
inputs:
- id: km_er_size
  doc: size of the kmers to index (default:35)
  type: boolean
  inputBinding:
    prefix: --kmer-size
- id: ref_km_er_size
  doc: size of the reference kmers to index (default:43)
  type: boolean
  inputBinding:
    prefix: --ref-kmer-size
- id: error_rate
  doc: expected sample error rate (default:0.001)
  type: boolean
  inputBinding:
    prefix: --error-rate
- id: samples
  doc: file containing the list of (VCF) samples to consider (default:-, i.e. all
    samples)
  type: boolean
  inputBinding:
    prefix: --samples
- id: freq_key
  doc: a priori frequency key in the INFO column of the input VCF (default:AF)
  type: boolean
  inputBinding:
    prefix: --freq-key
- id: max_coverage
  doc: maximum coverage for variant alleles (default:200)
  type: boolean
  inputBinding:
    prefix: --max-coverage
- id: bf_size
  doc: bloom filter size in GB (default:4)
  type: boolean
  inputBinding:
    prefix: --bf-size
- id: strip_chr
  doc: strip "chr" from sequence names (default:false)
  type: boolean
  inputBinding:
    prefix: --strip-chr
- id: uniform
  doc: use uniform a priori probabilities (default:false)
  type: boolean
  inputBinding:
    prefix: --uniform
- id: verbose
  doc: 'output COVS and GTS in INFO column (default: false)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: haploid
  doc: 'run MALVA in haploid mode (default: false)'
  type: boolean
  inputBinding:
    prefix: --haploid
- id: reference_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: variants_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: kmc_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- malva-geno
