class: CommandLineTool
id: megahit_core_local.cwl
inputs:
- id: in_contig_file
  doc: "contig file\n-l, --lib_file_prefix arg              lib file prefix\n--kmin\
    \ arg (=11)\n--kmax arg (=41)\n--step arg (=6)\n--seed_kmer arg (=31)        \
    \      kmer size for seeding alignments\n--min_contig_len arg (=200)\n--min_mapping_len\
    \ arg (=75)\n--sparsity arg (=8)                sparsity of hash mapper\n--similarity\
    \ arg (=0.8)            alignment similarity threshold\n-t, --num_threads arg\
    \ (=0)\n-o, --output_file arg\n"
  type: long
  inputBinding:
    prefix: --contig_file
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_local
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megahit_core
- local
