class: CommandLineTool
id: fermi2.pl_unitig.cwl
inputs:
- id: in_output_prefix
  doc: output prefix [fmdef]
  type: string?
  inputBinding:
    prefix: -p
- id: in_approximate_genome_size
  doc: approximate genome size [100m]
  type: long?
  inputBinding:
    prefix: -s
- id: in_pass_error_correction
  doc: 2-pass error correction
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_primary_read_length
  doc: primary read length [101]
  type: long?
  inputBinding:
    prefix: -l
- id: in_use_intmer_posttrimmingfiltering
  doc: use INT-mer for post-trimming/filtering [61]
  type: long?
  inputBinding:
    prefix: -T
- id: in_min_overlap_length_unitig
  doc: min overlap length during unitig construction [based on -l]
  type: long?
  inputBinding:
    prefix: -k
- id: in_min_overlap_length_graph
  doc: min overlap length during graph cleaning [based on -l]
  type: long?
  inputBinding:
    prefix: -o
- id: in_min_overlap_length_unambiguous
  doc: min overlap length for unambiguous merging [based on -l]
  type: long?
  inputBinding:
    prefix: -m
- id: in_number_of_threads
  doc: number of threads [4]
  type: long?
  inputBinding:
    prefix: -t
- id: in_apply_error_correction
  doc: don't apply error correction
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_fermi_two_do_tpl
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fermi2.pl
- unitig
