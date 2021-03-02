class: CommandLineTool
id: pash_3.0lx.cwl
inputs:
- id: in_vertical_input
  doc: "Vertical sequence as a fasta input file with full path; if file ends\nin '.fof',\
    \ it is assumed the named file contains a list of Fasta files"
  type: File?
  inputBinding:
    prefix: --verticalInput
- id: in_horizontal_input
  doc: "Horizontal sequence: as a fasta input file with full path; if file ends\n\
    in '.fof', it is assumed the named file contains a list of Fasta files"
  type: File?
  inputBinding:
    prefix: --horizontalInput
- id: in_pattern_weight
  doc: Number of sampled positions in the sampling pattern
  type: long?
  inputBinding:
    prefix: --patternWeight
- id: in_pattern_length
  doc: length of sampling pattern, including unsampled positions
  type: long?
  inputBinding:
    prefix: --patternLength
- id: in_sampling_pattern
  doc: "pattern (e.g. 11011 would sample the two positions, skip\none position, then\
    \ sample the next two"
  type: long?
  inputBinding:
    prefix: --samplingPattern
- id: in_vertical_word_offset
  doc: request gzip-ed output (default is text)
  type: string?
  inputBinding:
    prefix: --verticalWordOffset
- id: in_scratch
  doc: directory location
  type: Directory?
  inputBinding:
    prefix: --scratch
- id: in_index_memory
  doc: of the vertical sequence hash in MB(default 1024)
  type: long?
  inputBinding:
    prefix: --indexMemory
- id: in_ignore_list
  doc: the kmers present in the ignore list file
  type: File?
  inputBinding:
    prefix: --ignoreList
- id: in_max_mappings
  doc: number of mappings per read
  type: long?
  inputBinding:
    prefix: --maxMappings
- id: in_top_percent
  doc: percent from the best alignment score to be reported for each read; use numbers
    in the interval 0-100; default 1
  type: long?
  inputBinding:
    prefix: --topPercent
- id: in_bisulfite_seq
  doc: mapping of bisulfite sequencing reads
  type: string?
  inputBinding:
    prefix: --bisulfiteSeq
- id: in_high_sensitivity
  doc: pash in high-sensitivity mode
  type: string?
  inputBinding:
    prefix: --highSensitivity
- id: in_medium_sensitivity
  doc: pash in medium-sensitivity mode (default setting)
  type: string?
  inputBinding:
    prefix: --mediumSensitivity
- id: in_low_sensitivity
  doc: pash in low-sensitivity mode
  type: string?
  inputBinding:
    prefix: --lowSensitivity
- id: in_fast_mode
  doc: pash in fast mode
  type: string?
  inputBinding:
    prefix: --fastMode
- id: in_keep_hashed_km_ers_percent
  doc: amount of hashed kmers to keep; this value should be between 90 and 100; default
    is 99
  type: long?
  inputBinding:
    prefix: --keepHashedKmersPercent
- id: in_pash_dot_exe
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
- pash-3.0lx
