class: CommandLineTool
id: sentieon_bwa_mem.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mem
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in1fq
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in2fq
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: k
  doc: minimum seed length [19]
  type: long
  inputBinding:
    prefix: -k
- id: w
  doc: band width for banded alignment [100]
  type: long
  inputBinding:
    prefix: -w
- id: d
  doc: off-diagonal X-dropoff [100]
  type: long
  inputBinding:
    prefix: -d
- id: r
  doc: look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]
  type: double
  inputBinding:
    prefix: -r
- id: y
  doc: seed occurrence for the 3rd round seeding [20]
  type: long
  inputBinding:
    prefix: -y
- id: c
  doc: skip seeds with more than INT occurrences [500]
  type: long
  inputBinding:
    prefix: -c
- id: d
  doc: drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]
  type: double
  inputBinding:
    prefix: -D
- id: w
  doc: discard a chain if seeded bases shorter than INT [0]
  type: long
  inputBinding:
    prefix: -W
- id: m
  doc: perform at most INT rounds of mate rescues for each read [50]
  type: long
  inputBinding:
    prefix: -m
- id: s
  doc: skip mate rescue
  type: boolean
  inputBinding:
    prefix: -S
- id: p
  doc: skip pairing; mate rescue performed unless -S also in use
  type: boolean
  inputBinding:
    prefix: -P
- id: a
  doc: score for a sequence match, which scales options -TdBOELU unless overridden
    [1]
  type: long
  inputBinding:
    prefix: -A
- id: b
  doc: penalty for a mismatch [4]
  type: long
  inputBinding:
    prefix: -B
- id: o
  doc: gap open penalties for deletions and insertions [6,6]
  type:
  - long
  inputBinding:
    prefix: -O
- id: e
  doc: gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]
  type:
  - long
  inputBinding:
    prefix: -E
- id: l
  doc: penalty for 5'- and 3'-end clipping [5,5]
  type:
  - long
  inputBinding:
    prefix: -L
- id: u
  doc: penalty for an unpaired read pair [17]
  type: long
  inputBinding:
    prefix: -U
- id: x
  doc: 'read type. Setting -x changes multiple parameters unless overriden [null]
    pacbio: -k17 -W40 -r10 -A1 -B1 -O1 -E1 -L0  (PacBio reads to ref) ont2d: -k14
    -W20 -r10 -A1 -B1 -O1 -E1 -L0  (Oxford Nanopore 2D-reads to ref) intractg: -B9
    -O16 -L5  (intra-species contigs to ref)'
  type: string
  inputBinding:
    prefix: -x
- id: p
  doc: smart pairing (ignoring in2.fq)
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: read group header line such as '@RG\tID:foo\tSM:bar' [null]
  type: string
  inputBinding:
    prefix: -R
- id: h
  doc: /FILE   insert STR to header if it starts with @; or insert lines in FILE [null]
  type: string
  inputBinding:
    prefix: -H
- id: j
  doc: treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt
    file)
  type: boolean
  inputBinding:
    prefix: -j
- id: v
  doc: 'verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: long
  inputBinding:
    prefix: -v
- id: t
  doc: minimum score to output [30]
  type: long
  inputBinding:
    prefix: -T
- id: h
  doc: if there are <INT hits with score >80% of the max score, output all in XA [5,200]
  type:
  - long
  inputBinding:
    prefix: -h
- id: a
  doc: output all alignments for SE or unpaired PE
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: append FASTA/FASTQ comment to SAM output
  type: boolean
  inputBinding:
    prefix: -C
- id: v
  doc: output the reference FASTA header in the XR tag
  type: boolean
  inputBinding:
    prefix: -V
- id: y
  doc: use soft clipping for supplementary alignments
  type: boolean
  inputBinding:
    prefix: -Y
- id: m
  doc: mark shorter split hits as secondary
  type: boolean
  inputBinding:
    prefix: -M
- id: i
  doc: specify the mean, standard deviation (10% of the mean if absent), max (4 sigma
    from the mean if absent) and min of the insert size distribution. FR orientation
    only. [inferred]
  type:
  - double
  - long
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- mem
