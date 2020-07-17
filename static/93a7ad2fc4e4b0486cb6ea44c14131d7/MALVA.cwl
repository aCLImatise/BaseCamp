class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MALVA.cwl
inputs:
- id: size_kmers_index
  doc: size of the kmers to index (default:35)
  type: boolean
  inputBinding:
    prefix: -k
- id: size_reference_kmers
  doc: size of the reference kmers to index (default:43)
  type: boolean
  inputBinding:
    prefix: -r
- id: expected_sample_default
  doc: expected sample error rate (default:0.001)
  type: boolean
  inputBinding:
    prefix: -e
- id: file_containing_list
  doc: file containing the list of (VCF) samples to consider (default:-, i.e. all
    samples)
  type: boolean
  inputBinding:
    prefix: -s
- id: frequency_key_info
  doc: a priori frequency key in the INFO column of the input VCF (default:AF)
  type: boolean
  inputBinding:
    prefix: -f
- id: maximum_coverage_variant
  doc: maximum coverage for variant alleles (default:200)
  type: boolean
  inputBinding:
    prefix: -c
- id: bloom_filter_size
  doc: bloom filter size in GB (default:4)
  type: boolean
  inputBinding:
    prefix: -b
- id: max_amount_default
  doc: max amount of RAM in GB - KMC parameter (default:4)
  type: boolean
  inputBinding:
    prefix: -m
- id: strip_sequence_names
  doc: strip \"chr\" from sequence names (dafault:false)
  type: boolean
  inputBinding:
    prefix: -p
- id: use_uniform_probabilities
  doc: use uniform a priori probabilities (default:false)
  type: boolean
  inputBinding:
    prefix: -u
- id: output_covs_gts
  doc: 'output COVS and GTS in INFO column (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
- id: run_malva_false
  doc: 'run MALVA in haploid mode (default: false)'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: variants
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sample
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- MALVA
