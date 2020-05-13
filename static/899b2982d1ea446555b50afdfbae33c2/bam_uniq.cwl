class: CommandLineTool
id: bam_uniq.pl.cwl
inputs:
- id: bam
  doc: BAM file to extract unique and multi mappers from
  type: boolean
  inputBinding:
    prefix: --bam
- id: band
  doc: Process bands of (supposedly paired-end) reads sharing the same name/id from
    a name-sorted BAM file. The reads of band are considered unique mappers if and
    only if all of them are unique mappers. In all other cases, all reads of a band
    are considered multi mappers. In a paired-end context this means that e.g. a read
    map uniquely, but its mate is a multi-mapper, both will be consideres multi-mappers.
  type: boolean
  inputBinding:
    prefix: --band
- id: out
  doc: Output path
  type: boolean
  inputBinding:
    prefix: --out
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_uniq.pl
