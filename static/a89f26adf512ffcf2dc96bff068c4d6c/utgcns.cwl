class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/utgcns.cwl
inputs:
- id: write_computed_tigs_binary
  doc: Write computed tigs to binary output file 'results'
  type: string
  inputBinding:
    prefix: -O
- id: write_computed_tigs_layout
  doc: Write computed tigs to layout output file 'layouts'
  type: string
  inputBinding:
    prefix: -L
- id: write_computed_tigs_fasta
  doc: Write computed tigs to fasta  output file 'fasta'
  type: string
  inputBinding:
    prefix: -A
- id: write_computed_tigs_fastq
  doc: Write computed tigs to fastq  output file 'fastq'
  type: string
  inputBinding:
    prefix: -Q
- id: export
  doc: Create a copy of the inputs needed to compute the tigs.  This file can then
    be sent to the developers for debugging.  The tig(s) are not processed and no
    other outputs are created.  Ideally, only one tig is selected (-u, below).
  type: string
  inputBinding:
    prefix: -export
- id: parameters
  doc: -e e            Expect alignments at up to fraction e error -em m           Don't
    ever allow alignments more than fraction m error -l l            Expect alignments
    of at least l bases -maxcoverage c  Use non-contained reads and the longest contained
    reads, up to C coverage, for consensus generation.  The default is 0, and will
    use all reads. -threads t      Use 't' compute threads; default 1.
  type: string
  inputBinding:
    position: 0
- id: logging
  doc: -v              Show multialigns. -V              Enable debugging option 'verbosemultialign'.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- utgcns
