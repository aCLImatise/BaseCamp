class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cap3.cwl
inputs:
- id: n_specify_size
  doc: N  specify band expansion size N > 10 (20)
  type: boolean
  inputBinding:
    prefix: -a
- id: n_specify_differences
  doc: N  specify base quality cutoff for differences N > 15 (20)
  type: boolean
  inputBinding:
    prefix: -b
- id: n_clipping_n
  doc: N  specify base quality cutoff for clipping N > 5 (12)
  type: boolean
  inputBinding:
    prefix: -c
- id: n_specify_sum
  doc: N  specify max qscore sum at differences N > 20 (200)
  type: boolean
  inputBinding:
    prefix: -d
- id: n_specify_clearance
  doc: N  specify clearance between no. of diff N > 10 (30)
  type: boolean
  inputBinding:
    prefix: -e
- id: n_specify_length
  doc: N  specify max gap length in any overlap N > 1 (20)
  type: boolean
  inputBinding:
    prefix: -f
- id: n_specify_gap
  doc: N  specify gap penalty factor N > 0 (6)
  type: boolean
  inputBinding:
    prefix: -g
- id: n_specify_score_cutoff
  doc: N  specify segment pair score cutoff N > 20 (40)
  type: boolean
  inputBinding:
    prefix: -i
- id: n_specify_chain
  doc: N  specify chain score cutoff N > 30 (80)
  type: boolean
  inputBinding:
    prefix: -j
- id: n_specify_end
  doc: N  specify end clipping flag N >= 0 (1)
  type: boolean
  inputBinding:
    prefix: -k
- id: n_specify_match
  doc: N  specify match score factor N > 0 (2)
  type: boolean
  inputBinding:
    prefix: -m
- id: n_specify_factor
  doc: N  specify mismatch score factor N < 0 (-5)
  type: boolean
  inputBinding:
    prefix: -n
- id: n_specify_length_cutoff
  doc: N  specify overlap length cutoff > 15 (40)
  type: boolean
  inputBinding:
    prefix: -o
- id: n_specify_percent_cutoff
  doc: N  specify overlap percent identity cutoff N > 65 (90)
  type: boolean
  inputBinding:
    prefix: -p
- id: n_specify_value
  doc: N  specify reverse orientation value N >= 0 (1)
  type: boolean
  inputBinding:
    prefix: -r
- id: n_specify_cutoff_n
  doc: N  specify overlap similarity score cutoff N > 250 (900)
  type: boolean
  inputBinding:
    prefix: -s
- id: n_specify_matches
  doc: N  specify max number of word matches N > 30 (300)
  type: boolean
  inputBinding:
    prefix: -t
- id: n_specify_correction
  doc: N  specify min number of constraints for correction N > 0 (3)
  type: boolean
  inputBinding:
    prefix: -u
- id: n_linking_n
  doc: N  specify min number of constraints for linking N > 0 (2)
  type: boolean
  inputBinding:
    prefix: -v
- id: n_specify_file
  doc: N  specify file name for clipping information (none)
  type: boolean
  inputBinding:
    prefix: -w
- id: n_specify_prefix
  doc: N  specify prefix string for output file names (cap)
  type: boolean
  inputBinding:
    prefix: -x
- id: n_specify_range_n
  doc: N  specify clipping range N > 5 (100)
  type: boolean
  inputBinding:
    prefix: -y
- id: n_specify_min
  doc: N  specify min no. of good reads at clip pos N > 0 (3)
  type: boolean
  inputBinding:
    prefix: -z
- id: file_of_reads
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cap3
