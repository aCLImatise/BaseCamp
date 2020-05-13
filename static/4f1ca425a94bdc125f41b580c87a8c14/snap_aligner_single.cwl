class: CommandLineTool
id: snap_aligner_single.cwl
inputs:
- id: lp
  doc: Run SNAP at low scheduling priority (Only implemented on Windows)
  type: boolean
  inputBinding:
    prefix: -lp
- id: nu
  doc: "No Ukkonen: don't reduce edit distance search based on prior candidates. This\
    \ option is purely for evaluating the performance effect of using Ukkonen's algorithm\
    \ rather than Smith-Waterman, and specifying it will slow down execution without\
    \ improving the alignments."
  type: boolean
  inputBinding:
    prefix: -nu
- id: no
  doc: "No Ordering: don't order the evalutation of reads so as to select more likely\
    \ candidates first.  This option is purely for evaluating the performance effect\
    \ of the read evaluation order, and specifying it will slow down execution without\
    \ improving alignments."
  type: boolean
  inputBinding:
    prefix: -no
- id: nt
  doc: Don't truncate searches based on missed seed hits.  This option is purely for
    evaluating the performance effect of candidate truncation, and specifying it will
    slow down execution without improving alignments.
  type: boolean
  inputBinding:
    prefix: -nt
- id: wbs
  doc: Write buffer size in megabytes.  Don't specify this unless you've gotten an
    error message saying to make it bigger.  Default 16.
  type: boolean
  inputBinding:
    prefix: -wbs
outputs: []
cwlVersion: v1.1
baseCommand:
- snap-aligner
- single
