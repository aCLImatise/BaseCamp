class: CommandLineTool
id: abyss_tofastq.cwl
inputs:
- id: cat
  doc: concatenate the records [default]
  type: boolean
  inputBinding:
    prefix: --cat
- id: interleave
  doc: interleave the records
  type: boolean
  inputBinding:
    prefix: --interleave
- id: fast_q
  doc: output FASTQ format [default]
  type: boolean
  inputBinding:
    prefix: --fastq
- id: fast_a
  doc: output FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: bx
  doc: copy SAM BX tag to output FASTA comment
  type: boolean
  inputBinding:
    prefix: --bx
- id: chastity
  doc: discard unchaste reads [default]
  type: boolean
  inputBinding:
    prefix: --chastity
- id: no_chastity
  doc: do not discard unchaste reads
  type: boolean
  inputBinding:
    prefix: --no-chastity
- id: trim_masked
  doc: trim masked bases from the ends of reads
  type: boolean
  inputBinding:
    prefix: --trim-masked
- id: no_trim_masked
  doc: do not trim masked bases from the ends of reads [default]
  type: boolean
  inputBinding:
    prefix: --no-trim-masked
- id: trim_quality
  doc: trim bases from the ends of reads whose quality is less than the threshold
  type: string
  inputBinding:
    prefix: --trim-quality
- id: standard_quality
  doc: zero quality is `!' (33) default for FASTQ and SAM files
  type: boolean
  inputBinding:
    prefix: --standard-quality
- id: illumina_quality
  doc: zero quality is `@' (64) default for qseq and export files
  type: boolean
  inputBinding:
    prefix: --illumina-quality
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-tofastq
