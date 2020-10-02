class: CommandLineTool
id: sqStoreDumpFASTQ.cwl
inputs:
- id: in_o_outprefix_write
  doc: "-o out-prefix       write files out-prefix.(libname).fastq, ...\nif out-prefix\
    \ is '-', all sequences output to stdout\nif out-prefix ends in .gz, .bz2 or .xz,\
    \ output is compressed\n-fastq              output is FASTQ format (with extension\
    \ .fastq, default)\n(note that QVs are not stored, and are invalid)\n-fasta  \
    \            output is FASTA format (with extension .fasta)\n-nolibname      \
    \    don't include the library name in the output file name\n-noreadname     \
    \    don't include the read name in the sequence header.  header will be:\n'>original-name\
    \ id=<seqID> clr=<bgn>,<end>   with names\n'>read<seqID> clr=<bgn>,<end>     \
    \           without names"
  type: File
  inputBinding:
    prefix: -S
- id: in_reverse
  doc: "Dump the reverse-complement of the read.\n-l id               output only\
    \ read in library number 'id'\n-r id[-id]          output only the single read\
    \ 'id', or the specified range of ids"
  type: boolean
  inputBinding:
    prefix: -reverse
- id: in_raw
  doc: Dump raw reads.
  type: boolean
  inputBinding:
    prefix: -raw
- id: in_corrected
  doc: Dump corrected reads.
  type: boolean
  inputBinding:
    prefix: -corrected
- id: in_trimmed
  doc: Dump the trimmed version of the raw/corrected read.
  type: boolean
  inputBinding:
    prefix: -trimmed
- id: in_compressed
  doc: Dump the compressed version of the raw/corrected read.
  type: boolean
  inputBinding:
    prefix: -compressed
- id: in_normal
  doc: "Dump the uncompressed version of the raw/corrected read.\n(for stores that\
    \ are by default compressing homopolymers)"
  type: boolean
  inputBinding:
    prefix: -normal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o_outprefix_write
  doc: "-o out-prefix       write files out-prefix.(libname).fastq, ...\nif out-prefix\
    \ is '-', all sequences output to stdout\nif out-prefix ends in .gz, .bz2 or .xz,\
    \ output is compressed\n-fastq              output is FASTQ format (with extension\
    \ .fastq, default)\n(note that QVs are not stored, and are invalid)\n-fasta  \
    \            output is FASTA format (with extension .fasta)\n-nolibname      \
    \    don't include the library name in the output file name\n-noreadname     \
    \    don't include the read name in the sequence header.  header will be:\n'>original-name\
    \ id=<seqID> clr=<bgn>,<end>   with names\n'>read<seqID> clr=<bgn>,<end>     \
    \           without names"
  type: File
  outputBinding:
    glob: $(inputs.in_o_outprefix_write)
cwlVersion: v1.1
baseCommand:
- sqStoreDumpFASTQ
