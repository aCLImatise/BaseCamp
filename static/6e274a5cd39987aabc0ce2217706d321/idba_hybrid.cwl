class: CommandLineTool
id: idba_hybrid.cwl
inputs:
- id: out
  doc: (=out)                   output directory
  type: string
  inputBinding:
    prefix: --out
- id: read
  doc: fasta read file (<=600)
  type: string
  inputBinding:
    prefix: --read
- id: read_level_2
  doc: paired-end reads fasta for second level scaffolds
  type: string
  inputBinding:
    prefix: --read_level_2
- id: read_level_3
  doc: paired-end reads fasta for third level scaffolds
  type: string
  inputBinding:
    prefix: --read_level_3
- id: read_level_4
  doc: paired-end reads fasta for fourth level scaffolds
  type: string
  inputBinding:
    prefix: --read_level_4
- id: read_level_5
  doc: paired-end reads fasta for fifth level scaffolds
  type: string
  inputBinding:
    prefix: --read_level_5
- id: long_read
  doc: fasta long read file (>600)
  type: string
  inputBinding:
    prefix: --long_read
- id: reference
  doc: reference genome
  type: string
  inputBinding:
    prefix: --reference
- id: mink
  doc: (=20)                   minimum k value (<=312)
  type: string
  inputBinding:
    prefix: --mink
- id: max_k
  doc: (=100)                  maximum k value (<=312)
  type: string
  inputBinding:
    prefix: --maxk
- id: step
  doc: (=20)                   increment of k-mer of each iteration
  type: string
  inputBinding:
    prefix: --step
- id: inner_mink
  doc: (=10)             inner minimum k value
  type: string
  inputBinding:
    prefix: --inner_mink
- id: inner_step
  doc: (=5)              inner increment of k-mer
  type: string
  inputBinding:
    prefix: --inner_step
- id: prefix
  doc: (=3)                  prefix length used to build sub k-mer table
  type: string
  inputBinding:
    prefix: --prefix
- id: min_count
  doc: (=2)               minimum multiplicity for filtering k-mer when building the
    graph
  type: string
  inputBinding:
    prefix: --min_count
- id: min_support
  doc: (=1)             minimum supoort in each iteration
  type: string
  inputBinding:
    prefix: --min_support
- id: num_threads
  doc: (=0)             number of threads
  type: string
  inputBinding:
    prefix: --num_threads
- id: seed_km_er
  doc: (=30)              seed kmer size for alignment
  type: string
  inputBinding:
    prefix: --seed_kmer
- id: min_contig
  doc: (=200)            minimum size of contig
  type: string
  inputBinding:
    prefix: --min_contig
- id: min_region
  doc: (=500)            minimum size of region in reference genome
  type: string
  inputBinding:
    prefix: --min_region
- id: similar
  doc: (=0.95)              similarity for alignment
  type: string
  inputBinding:
    prefix: --similar
- id: max_mismatch
  doc: (=3)            max mismatch of error correction
  type: string
  inputBinding:
    prefix: --max_mismatch
- id: min_pairs
  doc: (=3)               minimum number of pairs
  type: string
  inputBinding:
    prefix: --min_pairs
- id: max_gap
  doc: (=50)                maximum gap in reference
  type: string
  inputBinding:
    prefix: --max_gap
- id: no_local
  doc: do not use local assembly
  type: boolean
  inputBinding:
    prefix: --no_local
- id: no_coverage
  doc: do not iterate on coverage
  type: boolean
  inputBinding:
    prefix: --no_coverage
- id: no_correct
  doc: do not do correction
  type: boolean
  inputBinding:
    prefix: --no_correct
- id: pre_correction
  doc: perform pre-correction before assembly
  type: boolean
  inputBinding:
    prefix: --pre_correction
outputs: []
cwlVersion: v1.1
baseCommand:
- idba_hybrid
