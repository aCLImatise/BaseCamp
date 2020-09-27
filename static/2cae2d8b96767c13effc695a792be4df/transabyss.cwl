class: CommandLineTool
id: transabyss.cwl
inputs:
- id: in_se
  doc: single-end read files
  type: File[]
  inputBinding:
    prefix: --se
- id: in_pe
  doc: paired-end read files
  type: File[]
  inputBinding:
    prefix: --pe
- id: in_ss
  doc: input reads are strand-specific
  type: boolean
  inputBinding:
    prefix: --SS
- id: in_outdir
  doc: output directory [/transabyss_2.0.1_assembly]
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_name
  doc: "assembly name [transabyss] (ie. output assembly:\n'transabyss-final.fa')"
  type: string
  inputBinding:
    prefix: --name
- id: in_stage
  doc: run up to the specified stage [final]
  type: string
  inputBinding:
    prefix: --stage
- id: in_length
  doc: minimum output sequence length [100]
  type: long
  inputBinding:
    prefix: --length
- id: in_cleanup
  doc: level of clean-up of intermediate files [1]
  type: string
  inputBinding:
    prefix: --cleanup
- id: in_threads
  doc: number of threads ('j' in abyss-pe) [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_mpi
  doc: number of MPI processes ('np' in abyss-pe) [0]
  type: long
  inputBinding:
    prefix: --mpi
- id: in_km_er
  doc: k-mer size [32]
  type: long
  inputBinding:
    prefix: --kmer
- id: in_cov
  doc: minimum mean k-mer coverage of a unitig [2]
  type: long
  inputBinding:
    prefix: --cov
- id: in_eros
  doc: minimum erosion k-mer coverage [c]
  type: long
  inputBinding:
    prefix: --eros
- id: in_s_eros
  doc: minimum erosion k-mer coverage per strand [0]
  type: long
  inputBinding:
    prefix: --seros
- id: in_q_ends
  doc: minimum base quality on 5' and 3' ends of a read [3]
  type: long
  inputBinding:
    prefix: --qends
- id: in_q_all
  doc: minimum base quality throughout a read
  type: long
  inputBinding:
    prefix: --qall
- id: in_pairs
  doc: minimum number of pairs for building contigs [2]
  type: long
  inputBinding:
    prefix: --pairs
- id: in_seed
  doc: minimum unitig size for building contigs [k]
  type: long
  inputBinding:
    prefix: --seed
- id: in_g_sim
  doc: maximum iterations of graph simplification [2]
  type: long
  inputBinding:
    prefix: --gsim
- id: in_in_del
  doc: indel size tolerance [1]
  type: long
  inputBinding:
    prefix: --indel
- id: in_island
  doc: minimum length of island unitigs [0]
  type: long
  inputBinding:
    prefix: --island
- id: in_use_blat
  doc: use BLAT alignments to remove redundant sequences.
  type: boolean
  inputBinding:
    prefix: --useblat
- id: in_pid
  doc: "minimum percent sequence identity of redundant\nsequences [0.95]"
  type: double
  inputBinding:
    prefix: --pid
- id: in_walk
  doc: "percentage of mean k-mer coverage of seed for path-\nwalking [0.05]"
  type: double
  inputBinding:
    prefix: --walk
- id: in_no_ref
  doc: do not include reference paths in final assembly
  type: boolean
  inputBinding:
    prefix: --noref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory [/transabyss_2.0.1_assembly]
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- transabyss
