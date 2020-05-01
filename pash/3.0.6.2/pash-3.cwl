#!/usr/bin/env cwl-runner

baseCommand:
- pash-3.0lx
class: CommandLineTool
cwlVersion: v1.0
id: pash-3.0lx
inputs:
- doc: "| -v <verticalFile>  Vertical sequence as a fasta input file with full path;\
    \ if file ends in '.fof', it is assumed the named file contains a list of Fasta\
    \ files"
  id: vertical_input
  inputBinding:
    prefix: --verticalInput
  type: boolean
- doc: "| -h <horizontalFile> Horizontal sequence: as a fasta input file with full\
    \ path; if file ends in '.fof', it is assumed the named file contains a list of\
    \ Fasta files"
  id: horizontal_input
  inputBinding:
    prefix: --horizontalInput
  type: boolean
- doc: '| -d <number of diagonals> '
  id: diagonals
  inputBinding:
    prefix: --diagonals
  type: boolean
- doc: '| -k <pattern weight> Number of sampled positions in the sampling pattern'
  id: pattern_weight
  inputBinding:
    prefix: --patternWeight
  type: boolean
- doc: '| -n total length of sampling pattern, including unsampled positions'
  id: pattern_length
  inputBinding:
    prefix: --patternLength
  type: boolean
- doc: '| -m sampling pattern (e.g. 11011 would sample the two positions, skip one
    position, then sample the next two'
  id: sampling_pattern
  inputBinding:
    prefix: --samplingPattern
  type: boolean
- doc: '| -G <vertical word offset gap - must be a multiple of diagonal offset gap>'
  id: vertical_word_offset
  inputBinding:
    prefix: --verticalWordOffset
  type: boolean
- doc: '| -o <output file name>'
  id: output_file
  inputBinding:
    prefix: --outputFile
  type: boolean
- doc: '| -s <scoreCutoff>'
  id: score
  inputBinding:
    prefix: --score
  type: boolean
- doc: '| -z  request gzip-ed output (default is text)'
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: '| -S Scratch directory location '
  id: scratch
  inputBinding:
    prefix: --scratch
  type: boolean
- doc: '| -M index of the vertical sequence hash in MB(default 1024)'
  id: index_memory
  inputBinding:
    prefix: --indexMemory
  type: boolean
- doc: '| -L ignore the kmers present in the ignore list file'
  id: ignore_list
  inputBinding:
    prefix: --ignoreList
  type: boolean
- doc: '| -N maximum number of mappings per read'
  id: max_mappings
  inputBinding:
    prefix: --maxMappings
  type: boolean
- doc: '| -P top percent from the best alignment score to be reported for each read;
    use numbers in the interval 0-100; default 1'
  id: top_percent
  inputBinding:
    prefix: --topPercent
  type: boolean
- doc: '| -B perform mapping of bisulfite sequencing reads'
  id: bisulfite_seq
  inputBinding:
    prefix: --bisulfiteSeq
  type: boolean
- doc: '| -0 run pash in high-sensitivity mode '
  id: high_sensitivity
  inputBinding:
    prefix: --highSensitivity
  type: boolean
- doc: '| -1 run pash in medium-sensitivity mode (default setting)'
  id: medium_sensitivity
  inputBinding:
    prefix: --mediumSensitivity
  type: boolean
- doc: '| -2 run pash in low-sensitivity mode '
  id: low_sensitivity
  inputBinding:
    prefix: --lowSensitivity
  type: boolean
- doc: '| -3 run pash in fast mode '
  id: fast_mode
  inputBinding:
    prefix: --fastMode
  type: boolean
- doc: 'amount of hashed kmers to keep; this value should be between 90 and 100; default
    is 99 '
  id: keep_hashed_km_ers_percent
  inputBinding:
    prefix: --keepHashedKmersPercent
  type: string
