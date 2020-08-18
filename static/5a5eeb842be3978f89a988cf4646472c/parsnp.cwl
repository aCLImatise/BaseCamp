class: CommandLineTool
id: ../../../parsnp.cwl
inputs:
- id: query
  doc: Specify (assembled) query genome to use, in addition to genomes found in genome
    dir
  type: string
  inputBinding:
    prefix: --query
- id: max_mumi_distr_dist
  doc: Max MUMi distance value for MUMi distribution
  type: long
  inputBinding:
    prefix: --max-mumi-distr-dist
- id: max_mumi_distance
  doc: 'Max MUMi distance (default: autocutoff based on distribution of MUMi values)'
  type: long
  inputBinding:
    prefix: --max-mumi-distance
- id: fast_mum
  doc: Fast MUMi calculation
  type: boolean
  inputBinding:
    prefix: --fastmum
- id: mumi_only
  doc: Calculate MUMi and exit? overrides all other choices!
  type: boolean
  inputBinding:
    prefix: --mumi_only
- id: use_ani
  doc: Use ani for genome recruitment
  type: boolean
  inputBinding:
    prefix: --use-ani
- id: min_ani
  doc: Min ANI value to allow for genome recruitment.
  type: long
  inputBinding:
    prefix: --min-ani
- id: use_mash
  doc: Use mash for genome recruitment
  type: boolean
  inputBinding:
    prefix: --use-mash
- id: max_mash_dist
  doc: Max mash distance.
  type: long
  inputBinding:
    prefix: --max-mash-dist
- id: min_anchor_length
  doc: Min (a)NCHOR length (default = 1.1*(Log(S)))
  type: long
  inputBinding:
    prefix: --min-anchor-length
- id: mum_length
  doc: Mum length
  type: string
  inputBinding:
    prefix: --mum-length
- id: max_cluster_d
  doc: Maximal cluster D value
  type: long
  inputBinding:
    prefix: --max-cluster-d
- id: min_cluster_size
  doc: Minimum cluster size
  type: long
  inputBinding:
    prefix: --min-cluster-size
- id: max_diagonal_difference
  doc: Maximal diagonal difference. Either percentage (e.g. 0.2) or bp (e.g. 100bp)
  type: long
  inputBinding:
    prefix: --max-diagonal-difference
- id: alignment_program
  doc: Alignment program to use
  type: string
  inputBinding:
    prefix: --alignment-program
- id: unaligned
  doc: Ouput unaligned regions
  type: boolean
  inputBinding:
    prefix: --unaligned
- id: probe
  doc: Remove genome length constraints to search for MUMs in concatenated sequences
    much larger than reference
  type: boolean
  inputBinding:
    prefix: --probe
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: ''
  type: string[]
  inputBinding:
    prefix: -d
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- parsnp
