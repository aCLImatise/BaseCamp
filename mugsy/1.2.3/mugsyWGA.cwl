class: CommandLineTool
id: mugsyWGA.cwl
inputs:
- id: v
  doc: ',               --version                          print version information'
  type: boolean
  inputBinding:
    prefix: -V
- id: s
  doc: ',               --seq <FASTA Sequence File>        multi-FASTA file with all
    input sequences. For draft genomes, FASTA headers should be in the form >seqname
    genomename.'
  type: boolean
  inputBinding:
    prefix: -s
- id: al
  doc: ',              --aln <File1>,<File2>,...          Library of pairwise alignments.
    Aligned multi-FASTA format (XMFA)'
  type: boolean
  inputBinding:
    prefix: -al
- id: o
  doc: ',               --outfile <Filename>               output filename prefix
    (default outfile)'
  type: boolean
  inputBinding:
    prefix: -o
- id: distance
  doc: ',        --distance <String>                LCB chaining distance (default
    1000)'
  type: boolean
  inputBinding:
    prefix: -distance
- id: minlength
  doc: ',       --minlength <Int>                  Minimum LCB segment span (default
    100)'
  type: boolean
  inputBinding:
    prefix: -minlength
- id: unique
  doc: ',          --unique [true|false]              Report unique regions (default
    true)'
  type: boolean
  inputBinding:
    prefix: -unique
- id: duplications
  doc: ',    --duplications [true|false]        Report duplications. Requires a second
    alignment file of pairwise duplications is passed to --aln.  (default false)'
  type: boolean
  inputBinding:
    prefix: -duplications
- id: f
  doc: ',               --format [maf | msf]               output format (default
    maf)'
  type: boolean
  inputBinding:
    prefix: -f
- id: anchor_win
  doc: ',       --anchorwin <Int>                  bp window to consider for collapsing
    anchors (default 0)'
  type: boolean
  inputBinding:
    prefix: -anchorwin
- id: allow_nested_l_cbs
  doc: '[true|false]     allow anchors to contribute to multiple LCBs. Default=false
    (default false)'
  type: boolean
  inputBinding:
    prefix: --allownestedlcbs
- id: refine
  doc: ',          --refine <String>                  refinement method: mugsy,fsa,pecan,mlagan'
  type: boolean
  inputBinding:
    prefix: -refine
- id: segmentation
  doc: ',    --segmentation <String>            Segmentation method. mugsy,enredo,mercator'
  type: boolean
  inputBinding:
    prefix: -segmentation
- id: block_file
  doc: ',       --blockfile <String>               Bypass segmentation and use this
    output file from synchain-mugsy'
  type: boolean
  inputBinding:
    prefix: -blockfile
- id: g
  doc: ',               --gop <Int>                        gap open penalty (default
    -13)'
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: ',               --gex <Int>                        gap extension penalty (default
    -1)'
  type: boolean
  inputBinding:
    prefix: -e
- id: ma
  doc: ',              --matrix <Matrix file>. Ignored.   score matrix (default Blosum62)'
  type: boolean
  inputBinding:
    prefix: -ma
- id: ms
  doc: ',              --msc <Int>                        match score (default 5)'
  type: boolean
  inputBinding:
    prefix: -ms
- id: mm
  doc: ',              --mmsc <Int>                       mismatch penalty (default
    -4)'
  type: boolean
  inputBinding:
    prefix: -mm
- id: b
  doc: ',               --build [nj, min, max, avg, wavg]  tree building method for
    progressive aln (default nj) nj = Neighbor-joining min = UPGMA single linkage
    max = UPGMA complete linkage avg = UPGMA average linkage wavg = UPGMA weighted
    average linkage Neighbor-joining creates an unrooted tree. We root that tree at
    the last joined pair.'
  type: boolean
  inputBinding:
    prefix: -b
- id: i
  doc: ',               --infile <FASTA alignment file>    alignment file'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- mugsyWGA
