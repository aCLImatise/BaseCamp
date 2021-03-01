class: CommandLineTool
id: bam_uniq.pl.cwl
inputs:
- id: in_bam
  doc: BAM file to extract unique and multi mappers from
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_band
  doc: "Process bands of (supposedly paired-end) reads sharing the same\nname/id from\
    \ a name-sorted BAM file. The reads of band are\nconsidered unique mappers if\
    \ and only if all of them are unique\nmappers. In all other cases, all reads of\
    \ a band are considered\nmulti mappers. In a paired-end context this means that\
    \ e.g. a read\nmap uniquely, but its mate is a multi-mapper, both will be\nconsideres\
    \ multi-mappers."
  type: boolean?
  inputBinding:
    prefix: --band
- id: in_out
  doc: Output path
  type: File?
  inputBinding:
    prefix: --out
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output path
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- bam_uniq.pl
