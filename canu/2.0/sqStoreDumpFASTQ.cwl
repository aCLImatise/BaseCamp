class: CommandLineTool
id: sqStoreDumpFASTQ.cwl
inputs:
- id: o
  doc: write files out-prefix.(libname).fastq, ... if out-prefix is '-', all sequences
    output to stdout if out-prefix ends in .gz, .bz2 or .xz, output is compressed
  type: string
  inputBinding:
    prefix: -o
- id: fast_q
  doc: output is FASTQ format (with extension .fastq, default) (note that QVs are
    not stored, and are invalid)
  type: boolean
  inputBinding:
    prefix: -fastq
- id: fast_a
  doc: output is FASTA format (with extension .fasta)
  type: boolean
  inputBinding:
    prefix: -fasta
- id: no_libname
  doc: don't include the library name in the output file name
  type: boolean
  inputBinding:
    prefix: -nolibname
- id: no_read_name
  doc: "don't include the read name in the sequence header.  header will be: '>original-name\
    \ id=<seqID> clr=<bgn>,<end>   with names '>read<seqID> clr=<bgn>,<end>      \
    \          without names"
  type: boolean
  inputBinding:
    prefix: -noreadname
- id: reverse
  doc: Dump the reverse-complement of the read.
  type: boolean
  inputBinding:
    prefix: -reverse
- id: l
  doc: output only read in library number 'id'
  type: string
  inputBinding:
    prefix: -l
- id: r
  doc: "[-id]          output only the single read 'id', or the specified range of\
    \ ids"
  type: string
  inputBinding:
    prefix: -r
- id: raw
  doc: Dump raw reads.
  type: boolean
  inputBinding:
    prefix: -raw
- id: corrected
  doc: Dump corrected reads.
  type: boolean
  inputBinding:
    prefix: -corrected
- id: trimmed
  doc: Dump the trimmed version of the raw/corrected read.
  type: boolean
  inputBinding:
    prefix: -trimmed
- id: compressed
  doc: Dump the compressed version of the raw/corrected read.
  type: boolean
  inputBinding:
    prefix: -compressed
- id: normal
  doc: Dump the uncompressed version of the raw/corrected read. (for stores that are
    by default compressing homopolymers)
  type: boolean
  inputBinding:
    prefix: -normal
outputs: []
cwlVersion: v1.1
baseCommand:
- sqStoreDumpFASTQ
