class: CommandLineTool
id: cdhit_cluster.sh.cwl
inputs:
- id: in_file_cluster_max
  doc: "file in FASTA format\n-c percentage threshold to cluster, default 80\n-H cd-hit\
    \ command, default cd-hit-est\n-M max available memory (Mbyte), default 400\n\
    -n file name\n-s length difference cutoff, default 0.8\n-g group name (optional).\
    \ If unset, samples will be gathered in NO_GROUP group\n-p runs psi-cd-hit instead\
    \ of cd-hit\n-C psi-cd-hit only: circular sequences, default 1. If set to 0 sequence\
    \ is assumed lineal\n-G psi-cd-hit only: gobal identity, -G 0 only takes the first\
    \ local alignment for clustering\n-b psi-cd-hit only: choose blast program, default\
    \ blastn\n-T number of threads\n-v version\n-h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cdhit_cluster.sh
