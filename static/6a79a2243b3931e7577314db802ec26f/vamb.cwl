class: CommandLineTool
id: vamb.cwl
inputs:
- id: in_output_directory_create
  doc: output directory to create
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_fast_a
  doc: path to fasta file
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_t_nfs
  doc: path to .npz of TNF
  type: boolean?
  inputBinding:
    prefix: --tnfs
- id: in_names
  doc: path to .npz of names of sequences
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_lengths
  doc: path to .npz of seq lengths
  type: boolean?
  inputBinding:
    prefix: --lengths
- id: in_bam_files
  doc: '[ ...]  paths to (multiple) BAM files'
  type: boolean?
  inputBinding:
    prefix: --bamfiles
- id: in_rp_km
  doc: path to .npz of RPKM
  type: boolean?
  inputBinding:
    prefix: --rpkm
- id: in_jgi
  doc: path to output of jgi_summarize_bam_contig_depths
  type: File?
  inputBinding:
    prefix: --jgi
- id: in_ignore_contigs_shorter
  doc: ignore contigs shorter than this [100]
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_ignore_reads_alignment
  doc: ignore reads with alignment score below this [None]
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_ignore_reads_nucleotide
  doc: ignore reads with nucleotide identity below this [None]
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_number_subprocesses_spawn
  doc: number of subprocesses to spawn [min(8, nbamfiles)]
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_no_ref_check
  doc: skip reference name hashing check [False]
  type: boolean?
  inputBinding:
    prefix: --norefcheck
- id: in_min_fast_a
  doc: minimum bin size to output as fasta [None = no files]
  type: boolean?
  inputBinding:
    prefix: --minfasta
- id: in_n
  doc: '[ ...]          hidden neurons [Auto]'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_latent_neurons
  doc: latent neurons [32]
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_alpha_weight_tnf
  doc: alpha, weight of TNF versus depth loss [Auto]
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_beta_capacity_learn
  doc: beta, capacity to learn [200.0]
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_dropout
  doc: dropout [Auto]
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_cuda
  doc: use GPU to train & cluster [False]
  type: boolean?
  inputBinding:
    prefix: --cuda
- id: in_epochs
  doc: epochs [500]
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_starting_batch_size
  doc: starting batch size [64]
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_q
  doc: '[ [ ...]]        double batch size at epochs [25 75 150 300]'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_learning_rate
  doc: learning rate [0.001]
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_size_count_successes
  doc: size of window to count successes [200]
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_minimum_success_window
  doc: minimum success in window [20]
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_minimum_cluster_size
  doc: minimum cluster size [1]
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_stop_after_clusters
  doc: stop after c clusters [None = infinite]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_binsplit_separator
  doc: binsplit separator [None = no split]
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_var_29
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tnf_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_rp_km_input
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_create
  doc: output directory to create
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_create)
- id: out_jgi
  doc: path to output of jgi_summarize_bam_contig_depths
  type: File?
  outputBinding:
    glob: $(inputs.in_jgi)
hints: []
cwlVersion: v1.1
baseCommand:
- vamb
