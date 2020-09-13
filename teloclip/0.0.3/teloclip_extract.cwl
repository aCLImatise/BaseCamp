class: CommandLineTool
id: ../../../teloclip_extract.cwl
inputs:
- id: in_ref_idx
  doc: "Path to fai index for reference fasta. Index fasta\nusing `samtools faidx\
    \ FASTA`"
  type: File
  inputBinding:
    prefix: --refIdx
- id: in_prefix
  doc: 'Use this prefix for output files. Default: None.'
  type: string
  inputBinding:
    prefix: --prefix
- id: in_extract_reads
  doc: If set, write overhang reads to fasta by contig.
  type: boolean
  inputBinding:
    prefix: --extractReads
- id: in_extract_dir
  doc: 'Write extracted reads to this directory. Default: cwd.'
  type: Directory
  inputBinding:
    prefix: --extractDir
- id: in_min_clip
  doc: "Require clip to extend past ref contig end by at least\nN bases."
  type: long
  inputBinding:
    prefix: --minClip
- id: in_max_break
  doc: Tolerate max N unaligned bases at contig ends.
  type: long
  inputBinding:
    prefix: --maxBreak
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- teloclip-extract
