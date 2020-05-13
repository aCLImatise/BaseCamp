class: CommandLineTool
id: estscan.cwl
inputs:
- id: a
  doc: All in one sequence output
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: only results are shown, which have scores higher than this  fraction of the
    best score [1.000000].
  type: double
  inputBinding:
    prefix: -b
- id: d
  doc: deletion penalty [-50]
  type: long
  inputBinding:
    prefix: -d
- id: i
  doc: insertion penalty [-50]
  type: long
  inputBinding:
    prefix: -i
- id: l
  doc: only results longer than this length are shown [50]
  type: long
  inputBinding:
    prefix: -l
- id: m
  doc: score matrices file ($ESTSCANDIR/Hs.smat) [/usr/molbio/share/ESTScan/Hs.smat]
  type: File
  inputBinding:
    prefix: -M
- id: m
  doc: min value in matrix [-100]
  type: long
  inputBinding:
    prefix: -m
- id: n
  doc: how to compute the score of N [0]
  type: long
  inputBinding:
    prefix: -N
- id: n
  doc: remove deleted nucleotides from the output
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: report header information for best match only
  type: boolean
  inputBinding:
    prefix: -O
- id: o
  doc: send output to file.  - means stdout.  If both -t and -o specify stdout, only
    proteins will be written.
  type: File
  inputBinding:
    prefix: -o
- id: p
  doc: GC select correction for score matrices [4.000000]
  type: double
  inputBinding:
    prefix: -p
- id: s
  doc: only analyze positive strand
  type: boolean
  inputBinding:
    prefix: -S
- id: s
  doc: Skip sequences shorter than length [1]
  type: long
  inputBinding:
    prefix: -s
- id: t
  doc: <int*>   8 integers used as log-probabilities for transitions, start->5'UTR,
    start->CDS, start->3'UTR, 5'UTR->CDS, 5'UTR->end, CDS->3'UTR, CDS->end, 3'UTR->end
    [-10, -10, -5, -80, -40, -80, -40, -20]
  type: boolean
  inputBinding:
    prefix: -T
- id: t
  doc: Translate to protein.  - means stdout. will go to the file and the nucleotides
    will still go to stdout.
  type: File
  inputBinding:
    prefix: -t
- id: v
  doc: version information
  type: boolean
  inputBinding:
    prefix: -v
- id: w
  doc: width of the FASTA sequence output [60]
  type: long
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- estscan
