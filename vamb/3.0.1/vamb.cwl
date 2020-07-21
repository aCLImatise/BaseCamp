class: CommandLineTool
id: ../../../vamb.cwl
inputs:
- id: output_directory_create
  doc: output directory to create
  type: boolean
  inputBinding:
    prefix: --outdir
- id: fast_a
  doc: path to fasta file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: t_nfs
  doc: path to .npz of TNF
  type: boolean
  inputBinding:
    prefix: --tnfs
- id: names
  doc: path to .npz of names of sequences
  type: boolean
  inputBinding:
    prefix: --names
- id: lengths
  doc: path to .npz of seq lengths
  type: boolean
  inputBinding:
    prefix: --lengths
- id: bam_files
  doc: '[ ...]  paths to (multiple) BAM files'
  type: boolean
  inputBinding:
    prefix: --bamfiles
- id: rp_km
  doc: path to .npz of RPKM
  type: boolean
  inputBinding:
    prefix: --rpkm
- id: jgi
  doc: path to output of jgi_summarize_bam_contig_depths
  type: boolean
  inputBinding:
    prefix: --jgi
- id: ignore_contigs_shorter
  doc: ignore contigs shorter than this [100]
  type: boolean
  inputBinding:
    prefix: -m
- id: ignore_reads_alignment
  doc: ignore reads with alignment score below this [None]
  type: boolean
  inputBinding:
    prefix: -s
- id: ignore_reads_nucleotide
  doc: ignore reads with nucleotide identity below this [None]
  type: boolean
  inputBinding:
    prefix: -z
- id: number_subprocesses_spawn
  doc: number of subprocesses to spawn [min(8, nbamfiles)]
  type: boolean
  inputBinding:
    prefix: -p
- id: no_ref_check
  doc: skip reference name hashing check [False]
  type: boolean
  inputBinding:
    prefix: --norefcheck
- id: min_fast_a
  doc: minimum bin size to output as fasta [None = no files]
  type: boolean
  inputBinding:
    prefix: --minfasta
- id: n
  doc: '[ ...]          hidden neurons [Auto]'
  type: boolean
  inputBinding:
    prefix: -n
- id: latent_neurons
  doc: latent neurons [32]
  type: boolean
  inputBinding:
    prefix: -l
- id: alpha_weight_tnf
  doc: alpha, weight of TNF versus depth loss [Auto]
  type: boolean
  inputBinding:
    prefix: -a
- id: beta_capacity_learn
  doc: beta, capacity to learn [200.0]
  type: boolean
  inputBinding:
    prefix: -b
- id: dropout
  doc: dropout [Auto]
  type: boolean
  inputBinding:
    prefix: -d
- id: cuda
  doc: use GPU to train & cluster [False]
  type: boolean
  inputBinding:
    prefix: --cuda
- id: epochs
  doc: epochs [500]
  type: boolean
  inputBinding:
    prefix: -e
- id: starting_batch_size
  doc: starting batch size [64]
  type: boolean
  inputBinding:
    prefix: -t
- id: q
  doc: '[ [ ...]]        double batch size at epochs [25 75 150 300]'
  type: boolean
  inputBinding:
    prefix: -q
- id: learning_rate
  doc: learning rate [0.001]
  type: boolean
  inputBinding:
    prefix: -r
- id: size_count_successes
  doc: size of window to count successes [200]
  type: boolean
  inputBinding:
    prefix: -w
- id: minimum_success_window
  doc: minimum success in window [20]
  type: boolean
  inputBinding:
    prefix: -u
- id: minimum_cluster_size
  doc: minimum cluster size [1]
  type: boolean
  inputBinding:
    prefix: -i
- id: stop_c_clusters
  doc: stop after c clusters [None = infinite]
  type: boolean
  inputBinding:
    prefix: -c
- id: binsplit_separator
  doc: binsplit separator [None = no split]
  type: boolean
  inputBinding:
    prefix: -o
- id: var_29
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tnf_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: rp_km_input
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vamb
