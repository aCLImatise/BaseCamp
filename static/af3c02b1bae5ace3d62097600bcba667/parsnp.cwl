class: CommandLineTool
id: parsnp.cwl
inputs:
- id: in_curated
  doc: (c)urated genome directory, use all genomes in dir and ignore MUMi?
  type: boolean?
  inputBinding:
    prefix: --curated
- id: in_sequences
  doc: A list of files containing genomes/contigs/scaffolds
  type: string[]
  inputBinding:
    prefix: --sequences
- id: in_reference
  doc: (r)eference genome (set to ! to pick random one from sequence dir)
  type: string?
  inputBinding:
    prefix: --reference
- id: in_genbank
  doc: A list of Genbank file(s) (gbk)
  type: string[]
  inputBinding:
    prefix: --genbank
- id: in_output_dir
  doc: Specify (assembled) query genome to use, in addition to genomes found in genome
    dir
  type: string?
  inputBinding:
    prefix: --output-dir
- id: in_max_mumi_distr_dist
  doc: Max MUMi distance value for MUMi distribution
  type: long?
  inputBinding:
    prefix: --max-mumi-distr-dist
- id: in_max_mumi_distance
  doc: 'Max MUMi distance (default: autocutoff based on distribution of MUMi values)'
  type: long?
  inputBinding:
    prefix: --max-mumi-distance
- id: in_fast_mum
  doc: Fast MUMi calculation
  type: boolean?
  inputBinding:
    prefix: --fastmum
- id: in_mumi_only
  doc: Calculate MUMi and exit? overrides all other choices!
  type: boolean?
  inputBinding:
    prefix: --mumi_only
- id: in_use_ani
  doc: Use ani for genome recruitment
  type: boolean?
  inputBinding:
    prefix: --use-ani
- id: in_min_ani
  doc: Min ANI value to allow for genome recruitment.
  type: long?
  inputBinding:
    prefix: --min-ani
- id: in_use_mash
  doc: Use mash for genome recruitment
  type: boolean?
  inputBinding:
    prefix: --use-mash
- id: in_max_mash_dist
  doc: Max mash distance.
  type: long?
  inputBinding:
    prefix: --max-mash-dist
- id: in_min_anchor_length
  doc: Min (a)NCHOR length (default = 1.1*(Log(S)))
  type: long?
  inputBinding:
    prefix: --min-anchor-length
- id: in_mum_length
  doc: Mum length
  type: long?
  inputBinding:
    prefix: --mum-length
- id: in_max_cluster_d
  doc: Maximal cluster D value
  type: long?
  inputBinding:
    prefix: --max-cluster-d
- id: in_min_cluster_size
  doc: Minimum cluster size
  type: long?
  inputBinding:
    prefix: --min-cluster-size
- id: in_max_diagonal_difference
  doc: Maximal diagonal difference. Either percentage (e.g. 0.2) or bp (e.g. 100bp)
  type: long?
  inputBinding:
    prefix: --max-diagonal-difference
- id: in_alignment_program
  doc: Alignment program to use
  type: string?
  inputBinding:
    prefix: --alignment-program
- id: in_unaligned
  doc: Ouput unaligned regions
  type: boolean?
  inputBinding:
    prefix: --unaligned
- id: in_use_fast_tree
  doc: Use fasttree instead of RaxML
  type: boolean?
  inputBinding:
    prefix: --use-fasttree
- id: in_threads
  doc: Number of threads to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_max_partition_size
  doc: Max partition size (limits memory usage)
  type: long?
  inputBinding:
    prefix: --max-partition-size
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- parsnp
