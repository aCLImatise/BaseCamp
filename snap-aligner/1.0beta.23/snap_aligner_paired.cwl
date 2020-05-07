class: CommandLineTool
id: snap_aligner_paired.cwl
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
- id: f
  doc: additional option to -F to require both mates to satisfy filter (default is
    just one) If you specify -F b together with one of the other -F options, -F b
    MUST be second
  type: string
  inputBinding:
    prefix: -F
- id: ku
  doc: Keep unpaired-looking reads in SAM/BAM input.  Ordinarily, if a read doesn't
    specify mate information (RNEXT field is * and/or PNEXT is 0) then the code that
    matches reads will immdeiately discard it.  Specifying this flag may cause large
    memory usage for some input files, but may be necessary for some strangely formatted
    input files.  You'll also need to specify this flag for SAM/BAM files that were
    aligned by a single-end aligner.
  type: boolean
  inputBinding:
    prefix: -ku
outputs: []
cwlVersion: v1.1
baseCommand:
- snap-aligner
- paired
