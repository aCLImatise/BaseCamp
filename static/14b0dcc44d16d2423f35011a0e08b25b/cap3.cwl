class: CommandLineTool
id: cap3.cwl
inputs:
- id: file_of_reads
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: a
  doc: N  specify band expansion size N > 10 (20)
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: N  specify base quality cutoff for differences N > 15 (20)
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: N  specify base quality cutoff for clipping N > 5 (12)
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: N  specify max qscore sum at differences N > 20 (200)
  type: boolean
  inputBinding:
    prefix: -d
- id: e
  doc: N  specify clearance between no. of diff N > 10 (30)
  type: boolean
  inputBinding:
    prefix: -e
- id: f
  doc: N  specify max gap length in any overlap N > 1 (20)
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: N  specify gap penalty factor N > 0 (6)
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: N  specify segment pair score cutoff N > 20 (40)
  type: boolean
  inputBinding:
    prefix: -i
- id: j
  doc: N  specify chain score cutoff N > 30 (80)
  type: boolean
  inputBinding:
    prefix: -j
- id: k
  doc: N  specify end clipping flag N >= 0 (1)
  type: boolean
  inputBinding:
    prefix: -k
- id: m
  doc: N  specify match score factor N > 0 (2)
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: N  specify mismatch score factor N < 0 (-5)
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: N  specify overlap length cutoff > 15 (40)
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: N  specify overlap percent identity cutoff N > 65 (90)
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: N  specify reverse orientation value N >= 0 (1)
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: N  specify overlap similarity score cutoff N > 250 (900)
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: N  specify max number of word matches N > 30 (300)
  type: boolean
  inputBinding:
    prefix: -t
- id: u
  doc: N  specify min number of constraints for correction N > 0 (3)
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: N  specify min number of constraints for linking N > 0 (2)
  type: boolean
  inputBinding:
    prefix: -v
- id: w
  doc: N  specify file name for clipping information (none)
  type: boolean
  inputBinding:
    prefix: -w
- id: x
  doc: N  specify prefix string for output file names (cap)
  type: boolean
  inputBinding:
    prefix: -x
- id: y
  doc: N  specify clipping range N > 5 (100)
  type: boolean
  inputBinding:
    prefix: -y
- id: z
  doc: N  specify min no. of good reads at clip pos N > 0 (3)
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- cap3
