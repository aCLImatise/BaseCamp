class: CommandLineTool
id: pash_3.0lx.cwl
inputs:
- id: vertical_input
  doc: "| -v <verticalFile>  Vertical sequence as a fasta input file with full path;\
    \ if file ends in '.fof', it is assumed the named file contains a list of Fasta\
    \ files"
  type: boolean
  inputBinding:
    prefix: --verticalInput
- id: horizontal_input
  doc: "| -h <horizontalFile> Horizontal sequence: as a fasta input file with full\
    \ path; if file ends in '.fof', it is assumed the named file contains a list of\
    \ Fasta files"
  type: boolean
  inputBinding:
    prefix: --horizontalInput
- id: diagonals
  doc: '| -d <number of diagonals> '
  type: boolean
  inputBinding:
    prefix: --diagonals
- id: pattern_weight
  doc: '| -k <pattern weight> Number of sampled positions in the sampling pattern'
  type: boolean
  inputBinding:
    prefix: --patternWeight
- id: pattern_length
  doc: '| -n total length of sampling pattern, including unsampled positions'
  type: boolean
  inputBinding:
    prefix: --patternLength
- id: sampling_pattern
  doc: '| -m sampling pattern (e.g. 11011 would sample the two positions, skip one
    position, then sample the next two'
  type: boolean
  inputBinding:
    prefix: --samplingPattern
- id: vertical_word_offset
  doc: '| -G <vertical word offset gap - must be a multiple of diagonal offset gap>'
  type: boolean
  inputBinding:
    prefix: --verticalWordOffset
- id: output_file
  doc: '| -o <output file name>'
  type: boolean
  inputBinding:
    prefix: --outputFile
- id: score
  doc: '| -s <scoreCutoff>'
  type: boolean
  inputBinding:
    prefix: --score
- id: gzip
  doc: '| -z  request gzip-ed output (default is text)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: scratch
  doc: '| -S Scratch directory location '
  type: boolean
  inputBinding:
    prefix: --scratch
- id: index_memory
  doc: '| -M index of the vertical sequence hash in MB(default 1024)'
  type: boolean
  inputBinding:
    prefix: --indexMemory
- id: ignore_list
  doc: '| -L ignore the kmers present in the ignore list file'
  type: boolean
  inputBinding:
    prefix: --ignoreList
- id: max_mappings
  doc: '| -N maximum number of mappings per read'
  type: boolean
  inputBinding:
    prefix: --maxMappings
- id: top_percent
  doc: '| -P top percent from the best alignment score to be reported for each read;
    use numbers in the interval 0-100; default 1'
  type: boolean
  inputBinding:
    prefix: --topPercent
- id: bisulfite_seq
  doc: '| -B perform mapping of bisulfite sequencing reads'
  type: boolean
  inputBinding:
    prefix: --bisulfiteSeq
- id: high_sensitivity
  doc: '| -0 run pash in high-sensitivity mode '
  type: boolean
  inputBinding:
    prefix: --highSensitivity
- id: medium_sensitivity
  doc: '| -1 run pash in medium-sensitivity mode (default setting)'
  type: boolean
  inputBinding:
    prefix: --mediumSensitivity
- id: low_sensitivity
  doc: '| -2 run pash in low-sensitivity mode '
  type: boolean
  inputBinding:
    prefix: --lowSensitivity
- id: fast_mode
  doc: '| -3 run pash in fast mode '
  type: boolean
  inputBinding:
    prefix: --fastMode
- id: keep_hashed_km_ers_percent
  doc: 'amount of hashed kmers to keep; this value should be between 90 and 100; default
    is 99 '
  type: string
  inputBinding:
    prefix: --keepHashedKmersPercent
outputs: []
cwlVersion: v1.1
baseCommand:
- pash-3.0lx
