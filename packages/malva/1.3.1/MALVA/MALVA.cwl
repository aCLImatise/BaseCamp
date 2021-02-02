class: CommandLineTool
id: MALVA.cwl
inputs:
- id: in_size_kmers_index
  doc: size of the kmers to index (default:35)
  type: boolean
  inputBinding:
    prefix: -k
- id: in_size_reference_kmers
  doc: size of the reference kmers to index (default:43)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_expected_sample_error
  doc: expected sample error rate (default:0.001)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_file_containing_list
  doc: file containing the list of (VCF) samples to consider (default:-, i.e. all
    samples)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_priori_frequency_key
  doc: a priori frequency key in the INFO column of the input VCF (default:AF)
  type: boolean
  inputBinding:
    prefix: -f
- id: in_maximum_coverage_variant
  doc: maximum coverage for variant alleles (default:200)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_bloom_filter_size
  doc: bloom filter size in GB (default:4)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_max_amount_default
  doc: max amount of RAM in GB - KMC parameter (default:4)
  type: boolean
  inputBinding:
    prefix: -m
- id: in_strip_sequence_names
  doc: strip \"chr\" from sequence names (dafault:false)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_use_uniform_probabilities
  doc: use uniform a priori probabilities (default:false)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_output_covs_gts
  doc: 'output COVS and GTS in INFO column (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_run_malva_false
  doc: 'run MALVA in haploid mode (default: false)'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_variants
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sample
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MALVA
