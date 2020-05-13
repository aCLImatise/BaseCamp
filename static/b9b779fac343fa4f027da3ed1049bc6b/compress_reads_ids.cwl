class: CommandLineTool
id: compress_reads_ids.py.cwl
inputs:
- id: input
  doc: The input file in FASTQ Solexa file (also given thru STDOUT or as gzipped file).
    By default, it is assumed that the input reads are shuffled/interleaved (that
    is read id 1 is followed by read id 2 where read 1 and read 2 form a pair).
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output text file containg the changed reads ids (also given thru STDOUT
    or as gzipped file).
  type: string
  inputBinding:
    prefix: --output
- id: count_reads
  doc: The total number of reads in the input file. This is used in order to compress
    the best the reads ids.
  type: string
  inputBinding:
    prefix: --count-reads
- id: no12
  doc: If this is set than no /1 and /2 will be added to the compressed reads ids.
    It has an effect only on interleaved inputs.
  type: boolean
  inputBinding:
    prefix: --no12
- id: not_interleaved
  doc: If it is set then the input reads from the input FASTQ files are not interleaved.
    Also no /1 or /2 is added to the reads ids.
  type: boolean
  inputBinding:
    prefix: --not-interleaved
- id: lowercase
  doc: If this is set then also lowercase charcaters will be used for read ids in
    FASTQ files.
  type: boolean
  inputBinding:
    prefix: --lowercase
outputs: []
cwlVersion: v1.1
baseCommand:
- compress-reads-ids.py
