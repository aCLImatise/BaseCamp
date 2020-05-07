class: CommandLineTool
id: split_reads.py.cwl
inputs:
- id: input
  doc: The input file in FASTQ format (Solexa). Can be given as gzipped file too.
  type: string
  inputBinding:
    prefix: --input
- id: list
  doc: A text file containing on each line a name of short read which should be extracted
    from the input FASTQ file and its corresponding cut position (e.g. cut at position
    N (0-offset); part 1 = [0:N] and part 2 = [N+1:end-read]).
  type: string
  inputBinding:
    prefix: --list
- id: output_1
  doc: The output FASTQ file where is the first part of the reads (on forward strand).
  type: string
  inputBinding:
    prefix: --output-1
- id: output_2
  doc: The output FASTQ file where is the second part of the reads (on forward strand).
  type: string
  inputBinding:
    prefix: --output-2
- id: wiggle_size
  doc: The size of the wiggle for the cut. If it is 0 then a read is cut into one
    paired-reads. If it is 1 then a read is cut into 3 paired-reads. Default is 0.
  type: string
  inputBinding:
    prefix: --wiggle-size
- id: gap_size
  doc: The size of the gap for the cut. Default is 0.
  type: string
  inputBinding:
    prefix: --gap-size
- id: anchor_size
  doc: The minimum size of the anchor (for a mapped read which is splited). Default
    is 15.
  type: string
  inputBinding:
    prefix: --anchor-size
- id: anchor_size_max
  doc: The maximum size of the anchor (for a mapped read which is splited). Default
    is 500.
  type: string
  inputBinding:
    prefix: --anchor-size-max
- id: replace_solexa_ids
  doc: In the reads ids the '/' from '/1' and '/2' will be replaced with the string
    given here.
  type: string
  inputBinding:
    prefix: --replace-solexa-ids
- id: buffer_size
  doc: The size of the buffer used for keeping the list of reads ids (given by --list).
    Default is 2000000000.
  type: string
  inputBinding:
    prefix: --buffer-size
- id: output_2_rc
  doc: The Fastq file specified by '--output-2' will be reverse-complemented. Default
    is False.
  type: boolean
  inputBinding:
    prefix: --output-2-rc
outputs: []
cwlVersion: v1.1
baseCommand:
- split-reads.py
