class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dart.cwl
inputs:
- id: number_of_threads
  doc: number of threads [4]
  type: long
  inputBinding:
    prefix: -t
- id: f
  doc: 'files with #1 mates reads'
  type: boolean
  inputBinding:
    prefix: -f
- id: f_two
  doc: 'files with #2 mates reads'
  type: boolean
  inputBinding:
    prefix: -f2
- id: mis
  doc: maximal number of mismatches in an alignment
  type: long
  inputBinding:
    prefix: -mis
- id: max_dup
  doc: maximal number of repetitive fragments (between 100-10000) [100]
  type: long
  inputBinding:
    prefix: -max_dup
- id: alignment_filename_sam
  doc: alignment filename in SAM format
  type: boolean
  inputBinding:
    prefix: -o
- id: bo
  doc: alignment filename in BAM format
  type: boolean
  inputBinding:
    prefix: -bo
- id: splice_junction_output
  doc: splice junction output filename [junctions.tab]
  type: boolean
  inputBinding:
    prefix: -j
- id: output_multiple_alignments
  doc: output multiple alignments [false]
  type: boolean
  inputBinding:
    prefix: -m
- id: all_sj
  doc: detect all splice junction regardless of mapq score [false]
  type: boolean
  inputBinding:
    prefix: -all_sj
- id: pairedend_reads_interlaced
  doc: paired-end reads are interlaced in the same file
  type: boolean
  inputBinding:
    prefix: -p
- id: unique
  doc: output unique alignments
  type: boolean
  inputBinding:
    prefix: -unique
- id: max_intron
  doc: the maximal intron size [500000]
  type: boolean
  inputBinding:
    prefix: -max_intron
- id: min_intron
  doc: the minimal intron size [10]
  type: boolean
  inputBinding:
    prefix: -min_intron
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
- dart
