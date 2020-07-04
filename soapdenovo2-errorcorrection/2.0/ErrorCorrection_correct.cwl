class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ErrorCorrection_correct.cwl
inputs:
- id: consecutive_kmer_size
  doc: 'Consecutive Kmer Size, Default: 17'
  type: long
  inputBinding:
    prefix: -k
- id: space_kmer_solid
  doc: 'Space Kmer Solid Part Size, Default: 16'
  type: long
  inputBinding:
    prefix: -K
- id: space_kmer_space
  doc: 'Space Kmer Space Part Size, Default: 9'
  type: long
  inputBinding:
    prefix: -S
- id: consecutive_kmer_frequency_lower
  doc: 'Consecutive Kmer Frequency lower limit, Default: 10'
  type: long
  inputBinding:
    prefix: -l
- id: consecutive_kmer_frequency_upper
  doc: 'Consecutive Kmer Frequency upper limit, Default: 255'
  type: long
  inputBinding:
    prefix: -e
- id: space_kmer_frequency_lower
  doc: 'Space Kmer Frequency lower limit, Default: 10'
  type: long
  inputBinding:
    prefix: -L
- id: space_kmer_frequency_upper
  doc: 'Space Kmer Frequency upper limit, Default: 255'
  type: long
  inputBinding:
    prefix: -E
- id: minimum_consecutive_high
  doc: 'Minimum consecutive high frequency kmers per high-freq block, Default: 10'
  type: long
  inputBinding:
    prefix: -m
- id: maximum_base_alternation
  doc: 'Maximum base alternation per read, Default: 2'
  type: long
  inputBinding:
    prefix: -c
- id: maximum_trimmed_bases
  doc: 'Maximum trimmed bases allowed on each side, Default: 0'
  type: long
  inputBinding:
    prefix: -t
- id: minimum_read_length
  doc: 'Minimum read length after correction, Default: 50'
  type: long
  inputBinding:
    prefix: -r
- id: minimum_base_interval
  doc: 'Minimum base interval between two correction, Default: 0'
  type: long
  inputBinding:
    prefix: -I
- id: delete_correction_failed
  doc: 'Delete correction failed reads, Default: false'
  type: boolean
  inputBinding:
    prefix: -x
- id: connect_reads_correction
  doc: 'Connect reads after correction, use 2 times to output quality, Default: false'
  type: boolean
  inputBinding:
    prefix: -j
- id: correct_reads_end
  doc: 'Correct reads end by overlapping information, Default: false'
  type: boolean
  inputBinding:
    prefix: -y
- id: increase_verbosity_default
  doc: 'Increase Verbosity, 3 times max, Default: 1'
  type: boolean
  inputBinding:
    prefix: -v
- id: append_additional_information
  doc: 'Append additional information to read ID (EXPERIMENTAL), Default: false'
  type: boolean
  inputBinding:
    prefix: -F
- id: int_quality_ascii
  doc: '<int>    Quality ASCII base (Default: 33)'
  type: boolean
  inputBinding:
    prefix: -q
- id: int_quality_start
  doc: '<int>    Quality start range offset (Default: 2)'
  type: boolean
  inputBinding:
    prefix: -Q
- id: minimal_align_length
  doc: 'Minimal align length allowed, Default: 8'
  type: long
  inputBinding:
    prefix: -a
- id: maximal_align_length
  doc: 'Maximal align length allowed, Default: 70'
  type: long
  inputBinding:
    prefix: -A
- id: mean_align_length
  doc: 'Mean align length induced alignment, Default: 0'
  type: long
  inputBinding:
    prefix: -i
- id: identity_cutoff_aligned
  doc: 'Identity cutoff of aligned region, Default: 0.9'
  type: double
  inputBinding:
    prefix: -u
- id: maximum_simularity_best
  doc: 'Maximum simularity between best and second best result, Default: 0.7'
  type: double
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- ErrorCorrection
- correct
