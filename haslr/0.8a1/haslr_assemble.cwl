class: CommandLineTool
id: ../../../haslr_assemble.cwl
inputs:
- id: path_contigs_file
  doc: Path to contigs file (also --contig)
  type: string
  inputBinding:
    prefix: -c
- id: path_long_read
  doc: Path to long read dataset (also --long)
  type: string
  inputBinding:
    prefix: -l
- id: path_mappings_also
  doc: Path to mappings of long reads onto contigs (also --mapping)
  type: string
  inputBinding:
    prefix: -m
- id: path__dir
  doc: Path to the output directory (also --dir)
  type: string
  inputBinding:
    prefix: -d
- id: aln_block
  doc: Minimum length of alignment block [500]
  type: boolean
  inputBinding:
    prefix: --aln-block
- id: aln_sim
  doc: Minimum alignment similarity [0.85]
  type: boolean
  inputBinding:
    prefix: --aln-sim
- id: uniq_dev
  doc: Maximum deviation from mean frequency of uniq contigs [0.15]
  type: boolean
  inputBinding:
    prefix: --uniq-dev
- id: edge_sup
  doc: Minimum number of long read supporting each edge [3]
  type: boolean
  inputBinding:
    prefix: --edge-sup
- id: number_cpu_cores
  doc: Number of CPU cores to use (also --threads)
  type: long
  inputBinding:
    prefix: -t
- id: long_fof_n
  doc: The file passed by -l is fofn
  type: boolean
  inputBinding:
    prefix: --long-fofn
- id: mapping_fof_n
  doc: The file passed by -m is fofn
  type: boolean
  inputBinding:
    prefix: --mapping-fofn
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: detects_v
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- haslr_assemble
