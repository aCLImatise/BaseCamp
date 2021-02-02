class: CommandLineTool
id: kart.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [4]
  type: long
  inputBinding:
    prefix: -t
- id: in_f
  doc: 'files with #1 mates reads (format:fa, fq, fq.gz)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_f_two
  doc: 'files with #2 mates reads (format:fa, fq, fq.gz)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: in_alignment_filename_sam
  doc: alignment filename in SAM format [output.sam]
  type: File
  inputBinding:
    prefix: -o
- id: in_bo
  doc: alignment filename in BAM format
  type: boolean
  inputBinding:
    prefix: -bo
- id: in_output_multiple_alignments
  doc: output multiple alignments
  type: boolean
  inputBinding:
    prefix: -m
- id: in_max_gaps_indels
  doc: max gaps (indels) [5]
  type: long
  inputBinding:
    prefix: -g
- id: in_pairedend_reads_interlaced
  doc: paired-end reads are interlaced in the same file
  type: boolean
  inputBinding:
    prefix: -p
- id: in_pac_bio
  doc: pacbio data
  type: boolean
  inputBinding:
    prefix: -pacbio
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
- id: out_alignment_filename_sam
  doc: alignment filename in SAM format [output.sam]
  type: File
  outputBinding:
    glob: $(inputs.in_alignment_filename_sam)
cwlVersion: v1.1
baseCommand:
- kart
