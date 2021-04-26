class: CommandLineTool
id: hifiasm_meta.cwl
inputs:
- id: in_prefix_output_files
  doc: prefix of output files [hifiasm_meta.asm]
  type: string?
  inputBinding:
    prefix: -o
- id: in_prefix_its_different
  doc: prefix of bin files, if it's different from -o [hifiasm_meta.asm]
  type: string?
  inputBinding:
    prefix: -B
- id: in_ignore_saved_correction
  doc: ignore saved read correction and overlaps
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_length_adapters_removed
  doc: length of adapters that should be removed [0]
  type: long?
  inputBinding:
    prefix: -z
- id: in_enable_read_selection
  doc: enable read selection.
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_force_pre_ovec
  doc: enable and force read selection.
  type: boolean?
  inputBinding:
    prefix: --force-preovec
- id: in_low_q_one_zero
  doc: lower 10% runtime kmer frequency threshold. [50]
  type: boolean?
  inputBinding:
    prefix: --lowq-10
- id: in_low_q_five
  doc: lower 5% runtime kmer frequency threshold. [50]
  type: boolean?
  inputBinding:
    prefix: --lowq-5
- id: in_low_q_three
  doc: lower 3% runtime kmer frequency threshold. [-1]
  type: boolean?
  inputBinding:
    prefix: --lowq-3
- id: in_kmer_length_be
  doc: k-mer length (must be <64) [51]
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimizer_window_size
  doc: minimizer window size [51]
  type: long?
  inputBinding:
    prefix: -w
- id: in_number_bits_bloom
  doc: number of bits for bloom filter; 0 to disable [37]
  type: long?
  inputBinding:
    prefix: -f
- id: in_drop_kmers_occurring
  doc: drop k-mers occurring >FLOAT*coverage times [5.0]
  type: double?
  inputBinding:
    prefix: -D
- id: in_consider_maxdcoveragen_overlaps
  doc: consider up to max(-D*coverage,-N) overlaps for each oriented read [100]
  type: long?
  inputBinding:
    prefix: -N
- id: in_round_of_correction
  doc: round of correction [3]
  type: long?
  inputBinding:
    prefix: -r
- id: in_round_assembly_cleaning
  doc: round of assembly cleaning [4]
  type: long?
  inputBinding:
    prefix: -a
- id: in_remove_tip_unitigs
  doc: remove tip unitigs composed of <=INT reads [3]
  type: long?
  inputBinding:
    prefix: -n
- id: in_max_overlap_drop
  doc: max overlap drop ratio [0.8]
  type: double?
  inputBinding:
    prefix: -x
- id: in_min_overlap_drop
  doc: min overlap drop ratio [0.2]
  type: double?
  inputBinding:
    prefix: -y
- id: in_ban_assembly_terminate
  doc: ban assembly, i.e. terminate before generating string graph
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_write_paf
  doc: overlaps (paf).
  type: string?
  inputBinding:
    prefix: --write-paf
- id: in_dump_all_ovlp
  doc: dump all overlaps ever calculated in the final overlapping (paf).
  type: boolean?
  inputBinding:
    prefix: --dump-all-ovlp
- id: in_write_ec
  doc: dump error corrected reads (fasta).
  type: boolean?
  inputBinding:
    prefix: --write-ec
- id: in_zero_dot_two_r_zero_four_zero
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hifiasm_meta:hamtv0.2--h2e03b76_0
cwlVersion: v1.1
baseCommand:
- hifiasm_meta
