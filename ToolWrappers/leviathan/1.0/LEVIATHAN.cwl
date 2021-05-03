class: CommandLineTool
id: LEVIATHAN.cwl
inputs:
- id: in_region_size
  doc: ':          Size of the regions on the reference genome to consider (default:
    1000)'
  type: boolean?
  inputBinding:
    prefix: --regionSize
- id: in_m_invariant_size
  doc: ':     Minimum size of the SVs to detect (default: same as regionSize)'
  type: boolean?
  inputBinding:
    prefix: --minVariantSize
- id: in_max_links
  doc: ':           Remove from candidates list all candidates which have a region
    involved in that much candidates (default: 1000)'
  type: boolean?
  inputBinding:
    prefix: --maxLinks
- id: in_medium_size
  doc: ':         Minimum size of medium variants (default: 2000)'
  type: boolean?
  inputBinding:
    prefix: --mediumSize
- id: in_large_size
  doc: ':          Minimum size of large variants (default: 10000)'
  type: boolean?
  inputBinding:
    prefix: --largeSize
- id: in_small_rate
  doc: ':          Percentile to chose as a threshold in the distribution of the number
    of shared barcodes for small variants (default: 99)'
  type: boolean?
  inputBinding:
    prefix: --smallRate
- id: in_medium_rate
  doc: ':         Percentile to chose as a threshold in the distribution of the number
    of shared barcodes for medium variants (default: 99)'
  type: boolean?
  inputBinding:
    prefix: --mediumRate
- id: in_large_rate
  doc: ':          Percentile to chose as a threshold in the distribution of the number
    of shared barcodes for large variants (default: 99)'
  type: boolean?
  inputBinding:
    prefix: --largeRate
- id: in_duplicates
  doc: ':         Consider SV as duplicates if they have the same type and if their
    breakpoints are within this distance (default: 10)'
  type: boolean?
  inputBinding:
    prefix: --duplicates
- id: in_threads
  doc: ':            Number of threads (default: 8)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_pool_size
  doc: ':           Size of the thread pool (default: 100000)'
  type: boolean?
  inputBinding:
    prefix: --poolSize
- id: in_nb_bins
  doc: ':             Number of iterations to perform through the barcode index (default:
    10)'
  type: boolean?
  inputBinding:
    prefix: --nbBins
- id: in_min_barcodes
  doc: ':        Always remove candidates that share less than this number of barcodes
    (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --minBarcodes
- id: in_candidates
  doc: ':         File where to store valid SV candidates (default: "candidates.bedpe")'
  type: boolean?
  inputBinding:
    prefix: --candidates
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_b
  doc: ''
  type: File?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/leviathan:1.0--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- LEVIATHAN
