class: CommandLineTool
id: ReadFilter.cwl
inputs:
- id: unmapped_only
  doc: '(0 arg) :    Output unmapped reads'
  type: boolean
  inputBinding:
    prefix: -unmapped-only
- id: flank_length
  doc: "(1 arg) :    Flank length  [default '-1']"
  type: boolean
  inputBinding:
    prefix: -flank-length
- id: gap_length
  doc: "(1 arg) :    Gap length (in the scaffold)  [default '-1']"
  type: boolean
  inputBinding:
    prefix: -gap-length
- id: breakpoint
  doc: '(1 arg) :    Gap breakpoint position'
  type: boolean
  inputBinding:
    prefix: -breakpoint
- id: scaffold
  doc: '(1 arg) :    Scaffold name'
  type: boolean
  inputBinding:
    prefix: -scaffold
- id: std_dev
  doc: '(1 arg) :    Insert size standard deviation'
  type: boolean
  inputBinding:
    prefix: -std-dev
- id: mean
  doc: '(1 arg) :    Mean insert size'
  type: boolean
  inputBinding:
    prefix: -mean
- id: reads
  doc: '(1 arg) :    FASTA-formatted output file'
  type: boolean
  inputBinding:
    prefix: -reads
- id: bam
  doc: '(1 arg) :    Aligned BAM file'
  type: boolean
  inputBinding:
    prefix: -bam
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadFilter
