class: CommandLineTool
id: velveth.cwl
inputs:
- id: in_interleaved
  doc: ': File contains paired reads interleaved in the one file (default)'
  type: boolean?
  inputBinding:
    prefix: -interleaved
- id: in_separate
  doc: ': Read 2 separate files for paired reads'
  type: boolean?
  inputBinding:
    prefix: -separate
- id: in_strand_specific
  doc: ': for strand specific transcriptome sequencing data (default: off)'
  type: boolean?
  inputBinding:
    prefix: -strand_specific
- id: in_reuse_sequences
  doc: ': reuse Sequences file (or link) already in directory (no need to provide
    original filenames in this case (default: off)'
  type: boolean?
  inputBinding:
    prefix: -reuse_Sequences
- id: in_reuse_binary
  doc: ': reuse binary sequences file (or link) already in directory (no need to provide
    original filenames in this case (default: off)'
  type: boolean?
  inputBinding:
    prefix: -reuse_binary
- id: in_no_hash
  doc: ': simply prepare Sequences file, do not hash reads or prepare Roadmaps file
    (default: off)'
  type: boolean?
  inputBinding:
    prefix: -noHash
- id: in_create_binary
  doc: ': create binary CnyUnifiedSeq file (default: off)'
  type: boolean?
  inputBinding:
    prefix: -create_binary
- id: in_directory
  doc: ': directory name for output files'
  type: Directory
  inputBinding:
    position: 0
- id: in_hash_length
  doc: ": EITHER an odd integer (if even, it will be decremented) <= 191 (if above,\
    \ will be reduced)\n: OR: m,M,s where m and M are odd integers (if not, they will\
    \ be decremented) with m < M <= 191 (if above, will be reduced)\nand s is a step\
    \ (even number). Velvet will then hash from k=m to k=M with a step of s"
  type: string
  inputBinding:
    position: 1
- id: in_filename
  doc: ': path to sequence file or - for standard input'
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- velveth
