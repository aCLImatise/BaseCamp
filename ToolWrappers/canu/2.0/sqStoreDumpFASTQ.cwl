class: CommandLineTool
id: sqStoreDumpFASTQ.cwl
inputs:
- id: in_write_files_sequences
  doc: "write files out-prefix.(libname).fastq, ...\nif out-prefix is '-', all sequences\
    \ output to stdout\nif out-prefix ends in .gz, .bz2 or .xz, output is compressed"
  type: long?
  inputBinding:
    prefix: -S
- id: in_fast_q
  doc: "output is FASTQ format (with extension .fastq, default)\n(note that QVs are\
    \ not stored, and are invalid)"
  type: boolean?
  inputBinding:
    prefix: -fastq
- id: in_fast_a
  doc: output is FASTA format (with extension .fasta)
  type: boolean?
  inputBinding:
    prefix: -fasta
- id: in_no_libname
  doc: don't include the library name in the output file name
  type: File?
  inputBinding:
    prefix: -nolibname
- id: in_no_read_name
  doc: "don't include the read name in the sequence header.  header will be:\n'>original-name\
    \ id=<seqID> clr=<bgn>,<end>   with names\n'>read<seqID> clr=<bgn>,<end>     \
    \           without names"
  type: boolean?
  inputBinding:
    prefix: -noreadname
- id: in_reverse
  doc: Dump the reverse-complement of the read.
  type: boolean?
  inputBinding:
    prefix: -reverse
- id: in_output_only_read_number
  doc: output only read in library number 'id'
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_only_single_read
  doc: "[-id]          output only the single read 'id', or the specified range of\
    \ ids"
  type: string?
  inputBinding:
    prefix: -r
- id: in_raw
  doc: Dump raw reads.
  type: boolean?
  inputBinding:
    prefix: -raw
- id: in_corrected
  doc: Dump corrected reads.
  type: boolean?
  inputBinding:
    prefix: -corrected
- id: in_trimmed
  doc: Dump the trimmed version of the raw/corrected read.
  type: boolean?
  inputBinding:
    prefix: -trimmed
- id: in_compressed
  doc: Dump the compressed version of the raw/corrected read.
  type: boolean?
  inputBinding:
    prefix: -compressed
- id: in_normal
  doc: "Dump the uncompressed version of the raw/corrected read.\n(for stores that\
    \ are by default compressing homopolymers)"
  type: boolean?
  inputBinding:
    prefix: -normal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_libname
  doc: don't include the library name in the output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_no_libname)
hints: []
cwlVersion: v1.1
baseCommand:
- sqStoreDumpFASTQ
