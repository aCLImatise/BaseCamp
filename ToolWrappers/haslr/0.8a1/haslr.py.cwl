class: CommandLineTool
id: haslr.py.cwl
inputs:
- id: in_out
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --out
- id: in_genome
  doc: estimated genome size; accepted suffixes are k,m,g
  type: long
  inputBinding:
    prefix: --genome
- id: in_long
  doc: long read file
  type: File
  inputBinding:
    prefix: --long
- id: in_type
  doc: type of long reads chosen from {pacbio,nanopore}
  type: string
  inputBinding:
    prefix: --type
- id: in_short
  doc: short read file
  type: string[]
  inputBinding:
    prefix: --short
- id: in_threads
  doc: number of CPU threads to use [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_cov_lr
  doc: amount of long read coverage to use for assembly [25]
  type: long
  inputBinding:
    prefix: --cov-lr
- id: in_aln_block
  doc: minimum length of alignment block [500]
  type: long
  inputBinding:
    prefix: --aln-block
- id: in_aln_sim
  doc: minimum alignment similarity [0.85]
  type: double
  inputBinding:
    prefix: --aln-sim
- id: in_edge_sup
  doc: minimum number of long read supporting each edge [3]
  type: long
  inputBinding:
    prefix: --edge-sup
- id: in_mini_a_km_er
  doc: kmer size used by minia [49]
  type: long
  inputBinding:
    prefix: --minia-kmer
- id: in_mini_a_solid
  doc: minimum kmer abundance used by minia [3]
  type: long
  inputBinding:
    prefix: --minia-solid
- id: in_mini_a_asm
  doc: type of minia assembly chosen from {contigs,unitigs} [contigs]
  type: string
  inputBinding:
    prefix: --minia-asm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- haslr.py
