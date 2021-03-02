class: CommandLineTool
id: blobtools_bamfilter.cwl
inputs:
- id: in_bam
  doc: BAM file (sorted by name)
  type: File?
  inputBinding:
    prefix: --bam
- id: in_include
  doc: "List of contigs whose reads are included\n- writes FASTAs of pairs where at\
    \ least\none read maps sequences in list\n(InUn.fq, InIn.fq, ExIn.fq)"
  type: File?
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: "List of contigs whose reads are excluded (outputs reads that do not map to\
    \ sequences in list)\n- writes FASTAs of pairs where at least\none read does not\
    \ maps to sequences in list\n(InUn.fq, InIn.fq, ExIn.fq)"
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_exclude_unmapped
  doc: Include pairs where both reads are unmapped
  type: boolean?
  inputBinding:
    prefix: --exclude_unmapped
- id: in_non_interleaved
  doc: Use if fw and rev reads should be in separate files
  type: boolean?
  inputBinding:
    prefix: --noninterleaved
- id: in_read_format
  doc: 'FASTQ = fq, FASTA = fa [default: fa]'
  type: string?
  inputBinding:
    prefix: --read_format
- id: in_out
  doc: Output prefix
  type: string?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- blobtools
- bamfilter
