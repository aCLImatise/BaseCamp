class: CommandLineTool
id: ../../../kart.cwl
inputs:
- id: number_of_threads
  doc: number of threads [4]
  type: long
  inputBinding:
    prefix: -t
- id: f
  doc: 'files with #1 mates reads (format:fa, fq, fq.gz)'
  type: boolean
  inputBinding:
    prefix: -f
- id: f_two
  doc: 'files with #2 mates reads (format:fa, fq, fq.gz)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: alignment_filename_sam
  doc: alignment filename in SAM format [output.sam]
  type: boolean
  inputBinding:
    prefix: -o
- id: bo
  doc: alignment filename in BAM format
  type: boolean
  inputBinding:
    prefix: -bo
- id: output_multiple_alignments
  doc: output multiple alignments
  type: boolean
  inputBinding:
    prefix: -m
- id: max_gaps_indels
  doc: max gaps (indels) [5]
  type: long
  inputBinding:
    prefix: -g
- id: pairedend_reads_interlaced
  doc: paired-end reads are interlaced in the same file
  type: boolean
  inputBinding:
    prefix: -p
- id: pac_bio
  doc: pacbio data
  type: boolean
  inputBinding:
    prefix: -pacbio
- id: version
  doc: version
  type: boolean
  inputBinding:
    prefix: -v
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- kart
