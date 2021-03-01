class: CommandLineTool
id: basenji_data_align.py.cwl
inputs:
- id: in_genome_labels_output
  doc: Genome labels in output
  type: string?
  inputBinding:
    prefix: -a
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
- id: in_generate_cross_split
  doc: 'Generate cross fold split [Default: none]'
  type: string?
  inputBinding:
    prefix: -f
- id: in_commaseparated_list_files
  doc: "Comma-separated list of assembly gaps BED files\n[Default: none]"
  type: string?
  inputBinding:
    prefix: -g
- id: in_sequence_length
  doc: 'Sequence length [Default: 131072]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_nf
  doc: 'Alignment net fill size minimum [Default: 100000]'
  type: long?
  inputBinding:
    prefix: --nf
- id: in_no
  doc: "Alignment net and contig overlap minimum [Default:\n1024]"
  type: long?
  inputBinding:
    prefix: --no
- id: in_output_directory
  doc: 'Output directory [Default: align_out]'
  type: Directory?
  inputBinding:
    prefix: -o
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
  doc: 'Output directory [Default: align_out]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_data_align.py
