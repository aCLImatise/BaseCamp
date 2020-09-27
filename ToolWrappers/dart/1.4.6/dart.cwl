class: CommandLineTool
id: dart.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [4]
  type: long
  inputBinding:
    prefix: -t
- id: in_f
  doc: 'files with #1 mates reads'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_f_two
  doc: 'files with #2 mates reads'
  type: boolean
  inputBinding:
    prefix: -f2
- id: in_mis
  doc: maximal number of mismatches in an alignment
  type: long
  inputBinding:
    prefix: -mis
- id: in_max_dup
  doc: maximal number of repetitive fragments (between 100-10000) [100]
  type: long
  inputBinding:
    prefix: -max_dup
- id: in_alignment_filename_sam
  doc: alignment filename in SAM format
  type: boolean
  inputBinding:
    prefix: -o
- id: in_bo
  doc: alignment filename in BAM format
  type: boolean
  inputBinding:
    prefix: -bo
- id: in_splice_junction_output
  doc: splice junction output filename [junctions.tab]
  type: File
  inputBinding:
    prefix: -j
- id: in_output_multiple_alignments
  doc: output multiple alignments [false]
  type: boolean
  inputBinding:
    prefix: -m
- id: in_all_sj
  doc: detect all splice junction regardless of mapq score [false]
  type: boolean
  inputBinding:
    prefix: -all_sj
- id: in_pairedend_reads_interlaced
  doc: paired-end reads are interlaced in the same file
  type: boolean
  inputBinding:
    prefix: -p
- id: in_unique
  doc: output unique alignments
  type: boolean
  inputBinding:
    prefix: -unique
- id: in_max_intron
  doc: the maximal intron size [500000]
  type: boolean
  inputBinding:
    prefix: -max_intron
- id: in_min_intron
  doc: the minimal intron size [10]
  type: boolean
  inputBinding:
    prefix: -min_intron
- id: in_version
  doc: version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_splice_junction_output
  doc: splice junction output filename [junctions.tab]
  type: File
  outputBinding:
    glob: $(inputs.in_splice_junction_output)
cwlVersion: v1.1
baseCommand:
- dart
