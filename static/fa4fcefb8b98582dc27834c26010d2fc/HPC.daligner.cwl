class: CommandLineTool
id: HPC.daligner.cwl
inputs:
- id: in_kmer_size_must
  doc: ': k-mer size (must be <= 32).'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_look_kmers_w
  doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_ignore_kmers_occur
  doc: ': Ignore k-mers that occur >= -t times in a block.'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_use_only_gb
  doc: ': Use only -M GB of memory by ignoring most frequent k-mers.'
  type: boolean
  inputBinding:
    prefix: -M
- id: in_look_alignments_e
  doc: ': Look for alignments with -e percent similarity.'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_look_alignments_l
  doc: ': Look for alignments of length >= -l.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_use_s_spacing
  doc: ': Use -s as the trace point spacing for encoding alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_hgap_option_align
  doc: ': HGAP option: align only target reads of length >= -H.'
  type: boolean
  inputBinding:
    prefix: -H
- id: in_use_t_threads
  doc: ': Use -T threads.'
  type: boolean
  inputBinding:
    prefix: -T
- id: in_first_level_sort
  doc: ': Do first level sort and merge in directory -P.'
  type: boolean
  inputBinding:
    prefix: -P
- id: in_soft_mask_blocks
  doc: ': Soft mask the blocks with the specified mask.'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_run_commands_script
  doc: ': Run all commands in script in verbose mode.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_instruct_lasort_lamerge
  doc: ': Instruct LAsort & LAmerge to sort only on (a,ab).'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_put_las_files
  doc: ': Put .las files for each target block in a sub-directory'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_block_compares_daligner
  doc: ': # of block compares per daligner job'
  type: boolean
  inputBinding:
    prefix: -B
- id: in_place_script_bundles
  doc: ': Place script bundles in separate files with prefix <name>'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_vad
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vad
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HPC.daligner
