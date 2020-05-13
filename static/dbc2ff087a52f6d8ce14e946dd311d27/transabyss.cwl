class: CommandLineTool
id: transabyss.cwl
inputs:
- id: se
  doc: single-end read files
  type: File[]
  inputBinding:
    prefix: --se
- id: pe
  doc: paired-end read files
  type: File[]
  inputBinding:
    prefix: --pe
- id: ss
  doc: input reads are strand-specific
  type: boolean
  inputBinding:
    prefix: --SS
- id: outdir
  doc: output directory [/tmp/tmpgojogjh1/transabyss_2.0.1_assembly]
  type: File
  inputBinding:
    prefix: --outdir
- id: name
  doc: "assembly name [transabyss] (ie. output assembly: 'transabyss-final.fa')"
  type: string
  inputBinding:
    prefix: --name
- id: stage
  doc: run up to the specified stage [final]
  type: string
  inputBinding:
    prefix: --stage
- id: length
  doc: minimum output sequence length [100]
  type: long
  inputBinding:
    prefix: --length
- id: cleanup
  doc: '{0,1,2,3}   level of clean-up of intermediate files [1]'
  type: boolean
  inputBinding:
    prefix: --cleanup
- id: threads
  doc: number of threads ('j' in abyss-pe) [1]
  type: long
  inputBinding:
    prefix: --threads
- id: mpi
  doc: number of MPI processes ('np' in abyss-pe) [0]
  type: long
  inputBinding:
    prefix: --mpi
- id: km_er
  doc: k-mer size [32]
  type: long
  inputBinding:
    prefix: --kmer
- id: cov
  doc: minimum mean k-mer coverage of a unitig [2]
  type: long
  inputBinding:
    prefix: --cov
- id: eros
  doc: minimum erosion k-mer coverage [c]
  type: long
  inputBinding:
    prefix: --eros
- id: s_eros
  doc: minimum erosion k-mer coverage per strand [0]
  type: long
  inputBinding:
    prefix: --seros
- id: q_ends
  doc: minimum base quality on 5' and 3' ends of a read [3]
  type: long
  inputBinding:
    prefix: --qends
- id: q_all
  doc: minimum base quality throughout a read
  type: long
  inputBinding:
    prefix: --qall
- id: pairs
  doc: minimum number of pairs for building contigs [2]
  type: long
  inputBinding:
    prefix: --pairs
- id: seed
  doc: minimum unitig size for building contigs [k]
  type: long
  inputBinding:
    prefix: --seed
- id: g_sim
  doc: maximum iterations of graph simplification [2]
  type: long
  inputBinding:
    prefix: --gsim
- id: in_del
  doc: indel size tolerance [1]
  type: long
  inputBinding:
    prefix: --indel
- id: island
  doc: minimum length of island unitigs [0]
  type: long
  inputBinding:
    prefix: --island
- id: use_blat
  doc: use BLAT alignments to remove redundant sequences.
  type: boolean
  inputBinding:
    prefix: --useblat
- id: pid
  doc: minimum percent sequence identity of redundant sequences [0.95]
  type: double
  inputBinding:
    prefix: --pid
- id: walk
  doc: percentage of mean k-mer coverage of seed for path- walking [0.05]
  type: double
  inputBinding:
    prefix: --walk
- id: no_ref
  doc: do not include reference paths in final assembly
  type: boolean
  inputBinding:
    prefix: --noref
outputs: []
cwlVersion: v1.1
baseCommand:
- transabyss
