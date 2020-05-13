class: CommandLineTool
id: junctools_gtf.cwl
inputs:
- id: mode
  doc: 'GTF operation to apply.  See above for details.  Available options: - filter
    - markup - compare'
  type: string
  inputBinding:
    position: 0
- id: input
  doc: The input GTF file(s) to process
  type: string
  inputBinding:
    position: 1
- id: ignore_strand
  doc: Whether or not to ignore strand when looking for junctions
  type: boolean
  inputBinding:
    prefix: --ignore_strand
- id: junctions
  doc: The file containing junctions that should be found in the GTF.  Either this
    or '-t' must be used.
  type: string
  inputBinding:
    prefix: --junctions
- id: transcripts
  doc: The file containing transcripts that should be found in the GTF.  Either this
    or '-j' must be used.
  type: string
  inputBinding:
    prefix: --transcripts
- id: output
  doc: The filtered or markedup GTF output.  By default we print to stdout.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- junctools
- gtf
