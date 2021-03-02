class: CommandLineTool
id: HPC.TANmask.cwl
inputs:
- id: in_kmer_size_be
  doc: ': k-mer size (must be <= 32).'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_look_kmers_averlapping
  doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_look_percent_similarity
  doc: ': Look for alignments with -e percent similarity.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_look_alignments_length
  doc: ': Look for alignments of length >= -l.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_use_s_trace
  doc: ': Use -s as the trace point spacing for encoding alignments.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_use_t_threads
  doc: ': Use -T threads.'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_first_level_sort
  doc: ': Do first level sort and merge in directory -P.'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_use_name_tandem
  doc: ': use this name for the tandem mask track.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_run_commands_script
  doc: ': Run all commands in script in verbose mode.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_place_script_bundles
  doc: ': Place script bundles in separate files with prefix <name>'
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HPC.TANmask
