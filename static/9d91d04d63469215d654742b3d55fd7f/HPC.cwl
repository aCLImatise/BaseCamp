class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/HPC.daligner.cwl
inputs:
- id: kmer_size_must
  doc: ': k-mer size (must be <= 32).'
  type: boolean
  inputBinding:
    prefix: -k
- id: look_kmers_averlapping
  doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  type: boolean
  inputBinding:
    prefix: -w
- id: ignore_kmers_occur
  doc: ': Ignore k-mers that occur >= -t times in a block.'
  type: boolean
  inputBinding:
    prefix: -t
- id: use_only_gb
  doc: ': Use only -M GB of memory by ignoring most frequent k-mers.'
  type: boolean
  inputBinding:
    prefix: -M
- id: look_alignments_e
  doc: ': Look for alignments with -e percent similarity.'
  type: boolean
  inputBinding:
    prefix: -e
- id: look_alignments_l
  doc: ': Look for alignments of length >= -l.'
  type: boolean
  inputBinding:
    prefix: -l
- id: use_s_trace
  doc: ': Use -s as the trace point spacing for encoding alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: hgap_option_align
  doc: ': HGAP option: align only target reads of length >= -H.'
  type: boolean
  inputBinding:
    prefix: -H
- id: use_t_threads
  doc: ': Use -T threads.'
  type: boolean
  inputBinding:
    prefix: -T
- id: first_level_sort
  doc: ': Do first level sort and merge in directory -P.'
  type: boolean
  inputBinding:
    prefix: -P
- id: soft_mask_blocks
  doc: ': Soft mask the blocks with the specified mask.'
  type: boolean
  inputBinding:
    prefix: -m
- id: atgc_biased_compensate
  doc: ': For AT/GC biased data, compensate k-mer counts (deprecated).'
  type: boolean
  inputBinding:
    prefix: -b
- id: run_commands_script
  doc: ': Run all commands in script in verbose mode.'
  type: boolean
  inputBinding:
    prefix: -v
- id: instruct_lasort_lamerge
  doc: ': Instruct LAsort & LAmerge to sort only on (a,ab).'
  type: boolean
  inputBinding:
    prefix: -a
- id: put_las_files
  doc: ': Put .las files for each target block in a sub-directory'
  type: boolean
  inputBinding:
    prefix: -d
- id: block_compares_daligner
  doc: ': # of block compares per daligner job'
  type: boolean
  inputBinding:
    prefix: -B
- id: lass_merge_lamerge
  doc: ": # of .las's to merge per LAmerge job"
  type: boolean
  inputBinding:
    prefix: -D
- id: place_script_bundles
  doc: ': Place script bundles in separate files with prefix <name>'
  type: boolean
  inputBinding:
    prefix: -f
- id: v_bad
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vbad
- id: int
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- HPC.daligner
