class: CommandLineTool
id: basenji_data2.py.cwl
inputs:
- id: in_alignment_net_file
  doc: Alignment .net file
  type: File?
  inputBinding:
    prefix: -a
- id: in_set_blacklist_nucleotides
  doc: Set blacklist nucleotides to a baseline value.
  type: string?
  inputBinding:
    prefix: -b
- id: in_break
  doc: 'Break in half contigs above length [Default: none]'
  type: long?
  inputBinding:
    prefix: --break
- id: in_crop
  doc: 'Crop bp off each end [Default: 0]'
  type: long?
  inputBinding:
    prefix: --crop
- id: in_downsample_the_segments
  doc: Down-sample the segments
  type: string?
  inputBinding:
    prefix: -d
- id: in_commaseparated_list_files
  doc: "Comma-separated list of assembly gaps BED files\n[Default: none]"
  type: string?
  inputBinding:
    prefix: -g
- id: in_interpolate_nans
  doc: 'Interpolate NaNs [Default: False]'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_sequence_length
  doc: 'Sequence length [Default: 131072]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_local
  doc: "Run jobs locally as opposed to on SLURM [Default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_alignment_net_fill
  doc: 'Alignment net fill size minimum [Default: 100000]'
  type: long?
  inputBinding:
    prefix: -n
- id: in_output_directory
  doc: 'Output directory [Default: data_out]'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_number_parallel_processes
  doc: 'Number parallel processes [Default: none]'
  type: long?
  inputBinding:
    prefix: -p
- id: in_sequences_tfrecord_file
  doc: 'Sequences per TFRecord file [Default: 256]'
  type: File?
  inputBinding:
    prefix: -r
- id: in_restart
  doc: "Skip already read HDF5 coverage values. [Default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --restart
- id: in_seed
  doc: 'Random seed [Default: 44]'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_snap
  doc: "Snap sequences to multiple of the given value\n[Default: none]"
  type: string?
  inputBinding:
    prefix: --snap
- id: in_stride_train
  doc: "Stride to advance train sequences [Default:\nseq_length]"
  type: string?
  inputBinding:
    prefix: --stride_train
- id: in_stride_test
  doc: "Stride to advance valid and test sequences [Default:\n1.0]"
  type: double?
  inputBinding:
    prefix: --stride_test
- id: in_soft
  doc: "Soft clip values, applying sqrt to the execess above\nthe threshold [Default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --soft
- id: in_proportion_data_testing
  doc: 'Proportion of the data for testing [Default: 0.1]'
  type: double?
  inputBinding:
    prefix: -t
- id: in_commaseparated_genome_segments
  doc: Comma-separated genome unmappable segments to set to
  type: string?
  inputBinding:
    prefix: -u
- id: in_u_map_clip
  doc: "Clip unmappable regions to this percentile in the\nsequences' distribution\
    \ of values"
  type: string?
  inputBinding:
    prefix: --umap_clip
- id: in_sum_pool_width
  doc: 'Sum pool width [Default: 128]'
  type: long?
  inputBinding:
    prefix: -w
- id: in_proportion_data_validation
  doc: 'Proportion of the data for validation [Default: 0.1]'
  type: double?
  inputBinding:
    prefix: -v
- id: in_na
  doc: --umap_t=UMAP_T       Remove sequences with more than this unmappable bin %
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Output directory [Default: data_out]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_data2.py
