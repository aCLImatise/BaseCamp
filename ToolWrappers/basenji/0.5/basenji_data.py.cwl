class: CommandLineTool
id: basenji_data.py.cwl
inputs:
- id: in_set_blacklist_nucleotides
  doc: Set blacklist nucleotides to a baseline value.
  type: string?
  inputBinding:
    prefix: -b
- id: in_break
  doc: 'Break in half contigs above length [Default: 786432]'
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
- id: in_generate_cross_split
  doc: 'Generate cross fold split [Default: none]'
  type: string?
  inputBinding:
    prefix: -f
- id: in_genome_assembly_gaps
  doc: 'Genome assembly gaps BED [Default: none]'
  type: File?
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
- id: in_limit
  doc: Limit to segments that overlap regions in a BED file
  type: File?
  inputBinding:
    prefix: --limit
- id: in_local
  doc: "Run jobs locally as opposed to on SLURM [Default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --local
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
- id: in_peaks
  doc: 'Create contigs only from peaks [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --peaks
- id: in_sequences_tfrecord_file
  doc: 'Sequences per TFRecord file [Default: 256]'
  type: File?
  inputBinding:
    prefix: -r
- id: in_restart
  doc: 'Continue progress from midpoint. [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --restart
- id: in_seed
  doc: 'Random seed [Default: 44]'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_snap
  doc: "Snap sequences to multiple of the given value\n[Default: 1]"
  type: long?
  inputBinding:
    prefix: --snap
- id: in_split_test
  doc: 'Exit after split. [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --split_test
- id: in_stride_train
  doc: "Stride to advance train sequences [Default:\nseq_length]"
  type: string?
  inputBinding:
    prefix: --stride_train
- id: in_stride_test
  doc: "Stride to advance valid and test sequences [Default:\nseq_length]"
  type: string?
  inputBinding:
    prefix: --stride_test
- id: in_proportion_data_testing
  doc: 'Proportion of the data for testing [Default: 0.05]'
  type: double?
  inputBinding:
    prefix: -t
- id: in_unmappable_regions_bed
  doc: Unmappable regions in BED format
  type: string?
  inputBinding:
    prefix: -u
- id: in_u_map_t
  doc: "Remove sequences with more than this unmappable bin %\n[Default: 0.5]"
  type: double?
  inputBinding:
    prefix: --umap_t
- id: in_u_map_clip
  doc: "Clip values at unmappable positions to distribution\nquantiles, eg 0.25. [Default:\
    \ 1]"
  type: double?
  inputBinding:
    prefix: --umap_clip
- id: in_u_map_tfr
  doc: 'Save umap array into TFRecords [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --umap_tfr
- id: in_sum_pool_width
  doc: 'Sum pool width [Default: 128]'
  type: long?
  inputBinding:
    prefix: -w
- id: in_proportion_data_validation
  doc: 'Proportion of the data for validation [Default: 0.05]'
  type: double?
  inputBinding:
    prefix: -v
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_targets_file
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- basenji_data.py
